From: hl <hl@rock-chips.com>
Subject: Re: [RFC PATCH v1 4/6] PM / devfreq: event: support rockchip dfi
 controller
Date: Mon, 6 Jun 2016 14:19:12 +0800
Message-ID: <575515E0.8080108@rock-chips.com>
References: <1464947719-6245-1-git-send-email-hl@rock-chips.com>
 <1464947719-6245-5-git-send-email-hl@rock-chips.com>
 <20160603165426.GC21013@ulmo.ba.sec>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20160603165426.GC21013@ulmo.ba.sec>
Sender: linux-clk-owner@vger.kernel.org
To: Thierry Reding <thierry.reding@gmail.com>
Cc: heiko@sntech.de, mark.yao@rock-chips.com, myungjoo.ham@samsung.com, mturquette@baylibre.com, sboyd@codeaurora.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, kyungmin.park@samsung.com, dianders@chromium.org, dbasehore@chromium.org, huangtao@rock-chips.com, typ@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Thierry,

On 2016=E5=B9=B406=E6=9C=8804=E6=97=A5 00:54, Thierry Reding wrote:
> On Fri, Jun 03, 2016 at 05:55:17PM +0800, Lin Huang wrote:
> [...]
>> +	ret =3D clk_prepare_enable(data->clk);
>> +	if (ret) {
>> +		dev_err(&pdev->dev, "failed to enable clk: %d\n", ret);
>> +		clk_disable_unprepare(data->clk);
>> +		return ret;
>> +	}
> This is going to give you a large WARN. clk_prepare_enable() already
> leaves the clock in a proper state when it fails (i.e. it calls
> clk_unprepare() if the clk_enable() part failed), so calling
> clk_disable_unprepare() upon failure is going to unbalance the
> reference counts.
Thanks for reminding, i will fix it next version.
>
> Thierry

--=20
Lin Huang


