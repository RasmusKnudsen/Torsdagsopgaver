class Team {
    private String teamName;
    private int teamRank;
    private String teamPlayerName;

    public Team(String teamName, int teamRank, String teamPlayerName) {
        this.teamName = teamName;
        this.teamRank = teamRank;
        this.teamPlayerName = teamPlayerName;
    }

    public void setRank(int rank) {
        this.teamRank = rank;
    }

    public String toString() {
        return "Hold: " + teamName + " Rang: " + teamRank;
    }
}