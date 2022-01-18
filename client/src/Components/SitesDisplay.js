import ResultCards from "./ResultCards";
// import SiteList from "./SiteList";

function SitesDisplay({ siteLists, handleReviewClick, handleSubmit }) {
  const sitesmapped = siteLists.map((e) => {
    return (
      <ResultCards
        site={e}
        key={e.id}
        name={e.name}
        rating={e.rating}
        location={e.location}
        contact={e.contact}
        hours={e.hours}
        handleReviewClick={handleReviewClick}
        handleSubmit={handleSubmit}
        // handleEventDelete={handleEventDelete}
      />
    );
  });
  return <div>{sitesmapped}</div>;
}

export default SitesDisplay;
