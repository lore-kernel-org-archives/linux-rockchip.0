From: Doug Anderson <dianders@chromium.org>
Subject: Re: cpufreq(-dt) with two clocks but one regulator
Date: Mon, 18 Sep 2017 16:37:56 -0700
Message-ID: <CAD=FV=W+rvgJuNO0gEPN02bYkkJt6i6um=YGjUoaKmyrFhhSiw@mail.gmail.com>
References: <1515316.mHJbnBRRvK@phil> <20170918012416.GB17030@ubuntu> <2224473.GjtbWfbYHk@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-pm-owner@vger.kernel.org>
In-Reply-To: <2224473.GjtbWfbYHk@phil>
Sender: linux-pm-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Klaus Goger <klaus.goger@theobroma-systems.com>, Vincent Guittot <vincent.guittot@linaro.org>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Heiko,

On Mon, Sep 18, 2017 at 3:40 PM, Heiko Stuebner <heiko@sntech.de> wrote:
> Current submitted OPPs can be found at
> https://patchwork.kernel.org/patch/9908519/
>
> There were still issues with higher frequencies, so they don't list the
> 1.2 or 1.5GHz yet.
>
> But opp sets pretty tight constraints. I.e. OPPs have of course one
> preferred voltage, so you end up with u_volt_min = u_volt_max for each
> operating point, thus the regulator also gets set in this way, removing any
> intersection and thus making the regulator framework fail to set a voltage
> for one of the clusters.
>
> So for example, you have one cluster running at 600MHz@0.95V and the
> other cluster running at 1008MHz@1.05V this results in regulator
> constraints being
>         0.95V-0.95V
> and
>         1.05V-1.05V
> thus no intersection and whoever comes second looses.

(Untested) Can't you change the opp table and use the fancier
operating point descriptions that give <target min max>?

  cluster0_opp: opp-table0 {
      compatible = "operating-points-v2";
      opp-shared;

      opp00 {
          opp-hz = /bits/ 64 <312000000>;
          opp-microvolt = <950000 950000 1050000>;
          clock-latency-ns = <40000>;
      };
      opp01 {
          opp-hz = /bits/ 64 <408000000>;
          opp-microvolt = <950000 950000 1050000>;
      };
      opp02 {
          opp-hz = /bits/ 64 <600000000>;
          opp-microvolt = <950000 950000 1050000>;
      };
      opp03 {
          opp-hz = /bits/ 64 <816000000>;
          opp-microvolt = <1025000 1025000 1050000>;
      };
      opp04 {
          opp-hz = /bits/ 64 <1008000000>;
          opp-microvolt = <1125000 1125000 1050000>;
      };
  };

  cluster1_opp: opp-table1 {
      compatible = "operating-points-v2";
      opp-shared;

      opp00 {
          opp-hz = /bits/ 64 <312000000>;
          opp-microvolt = <950000 950000 1125000>;
          clock-latency-ns = <40000>;
      };
      opp01 {
          opp-hz = /bits/ 64 <408000000>;
          opp-microvolt = <950000 950000 1125000>;
      };
      opp02 {
          opp-hz = /bits/ 64 <600000000>;
          opp-microvolt = <950000 950000 1125000>;
      };
      opp03 {
          opp-hz = /bits/ 64 <816000000>;
          opp-microvolt = <975000 975000 1125000>;
      };
      opp04 {
          opp-hz = /bits/ 64 <1008000000>;
          opp-microvolt = <1050000>;
      };
  };


In theory the above is a more proper hardware description: AKA you're
describing that it's OK to use the higher voltage even at lower
operating points.


-Doug
