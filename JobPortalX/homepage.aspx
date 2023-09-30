<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="JobPortalX.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div style="text-align: center;">
            <img src="imgs/logo1.png" width="700" height="200" style="display: block; margin: 0 auto;" />
        </div>

        <div class="form-box">
            <div class="input-box">
                <i class="uil uil-search"></i>
                <input type="text" placeholder="Search job title..." id="jobTitleInput" />
                <div class="separator">|</div>
                <input type="text" placeholder="Search location..." id="locationInput" />
                <button class="button">Search</button>
            </div>
        </div>
        <img class="speech" src="imgs/arrowSpeech.png" />
        <div class="wave wave1"></div>
        <div class="wave wave2"></div>
        <div class="wave wave3"></div>
        <div class="wave wave4"></div>
    </section>

   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(document).ready(function () {
            var locations = [
                "United Kingdom",
                "United States",
                "India",
                "Canada",
                "Spain",
                "France",
                "United Arab Emirates",
                "Thailand",
                "Japan",
                "South Korea",
                "China",
                "Germany",
                "Australia",
                "Brazil",
                "Mexico",
                "Italy",
                "Russia",
                "South Africa",
                "Singapore",
                "Sweden",
                "Switzerland",
                "Netherlands",
                "Norway",
                "New Zealand",
                "Argentina",
                "Chile",
                "Greece",
                "Turkey",
                "Egypt",
                "Saudi Arabia",
                "Malaysia",
                "Indonesia",
                "Vietnam",
                "Philippines",
                "Pakistan",
                "Bangladesh",
                "Sri Lanka",
                "Nepal",
                "Kenya",
                "Nigeria",
                "Ghana",
                "Morocco",
                "Tunisia",
                "Peru",
                "Colombia",
                "Venezuela"
            ];

            /*
            var jobTitles = [
                "Accountant",
                "Software Engineer",
                "Nurse",
                "Marketing Manager",
                "Teacher",
                "Sales Representative",
                "Project Manager",
                "Graphic Designer",
                "Human Resources Specialist",
                "Financial Analyst",
                "Registered Nurse",
                "Executive Assistant",
                "Data Analyst",
                "Pharmacist",
                "Customer Service Representative",
                "Electrical Engineer",
                "Mechanical Engineer",
                "Web Developer",
                "Chef",
                "Police Officer",
                "Attorney",
                "Physician",
                "Dentist",
                "Architect",
                "Product Manager",
                "Social Worker",
                "Psychologist",
                "Veterinarian",
                "Scientist",
                "Electrician",
                "Plumber",
                "Construction Worker",
                "Bartender",
                "Waiter/Waitress",
                "Librarian",
                "Journalist",
                "Librarian",
                "Real Estate Agent",
                "CEO (Chief Executive Officer)",
                "CFO (Chief Financial Officer)",
                "COO (Chief Operating Officer)",
                "CTO (Chief Technology Officer)",
                "CMO (Chief Marketing Officer)",
                "CIO (Chief Information Officer)",
                "CFO (Chief Human Resources Officer)",
                "Chef de Cuisine",
                "Flight Attendant",
                "Event Planner",
                "Personal Trainer"
            ];
            */

            $("#locationInput").autocomplete({
                source: locations,
                minLength: 1
            });

            /*
            $("#jobTitleInput").autocomplete({
                source: jobTitles,
                minLength: 1
            });
            */
        });
    </script>


</asp:Content>
