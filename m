Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55A7BC3601A
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Apr 2025 14:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXFMSpdM9JdjDusOlWz0zc18Js5zKpcv4cRFmS+F1yI=; b=GVUAtE5HWEnGsR
	5OOjoE2ei9gbJ229N2/JxlRvyjUmm85lclPS1ED091h8z5oCf6yS5RY+EG0vEl/Tu3M8bL/DjydE+
	FOCSAjlpGAWbvknMfUAR/W7ChmBJn14UojKlR7yDUY1cX7+GVI4xH60voVwBUBRirmaJ1k0anlTfq
	RuaRIrxR9/Ph/0U4IJcxAd1GgO+WV/1GzeYWgqPf/g5N/bPkVUYVT3lcTU4IhgK0xxwWXWVT85nxT
	mkdYEiXzVs4Ks2GnglN5bCfP+60hAfEzJZowxlh9GHOy/7Cy07G+IFgWov2hYT823URhBdQ25QPOF
	pcw/KrkNvYodQq0tYH/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u14jE-0000000E4zd-0V4D;
	Sat, 05 Apr 2025 14:42:36 +0000
Received: from mout02.posteo.de ([185.67.36.66])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u14jB-0000000E4xM-1OBq
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Apr 2025 14:42:34 +0000
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 7971C240101
	for <linux-rockchip@lists.infradead.org>; Sat,  5 Apr 2025 16:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1743864149; bh=XfnEVi3ovC/zw6g3a+nScy1RtngEkEo5Aoq+dlPJPpk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:Content-Type:Autocrypt:OpenPGP:From;
	b=bRlW4EuBgLbc/jsNHZ5F3N0Sbs0CvK78rZhhhEhFCKqaJm4AXeCP1eWWCbQ0oJaiR
	 Hfy47+nBka6NZihRmk2UKn9kw3G/8E1j/cnVv7l9kwGKm92znKHUyDr2Hw0j7qEorl
	 Dz7MJz0RG/jxDlhuPw+zV+461Tv+dycYeseZRxC5cqHaZDrShmLu3Kf11cbLmBRQKi
	 bpoQfor80eyOVU2QAjUUMU+jgscSpWhu27ywfurWH3I1fDe8xmzcEbbJgjz5jFd3dF
	 UUnOvqHt+boU80ZU9zcqgpKNry75+8vCXg+f3NWPNRDJtqlGdEGuZJMT79WHXVuXN4
	 Q/wErnC708HhA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4ZVJ8s527hz9rxK;
	Sat,  5 Apr 2025 16:42:21 +0200 (CEST)
From: Alexander Reimelt <alexander.reimelt@posteo.de>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 "Rob Herring (Arm)" <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com,
 Conor Dooley <conor@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org,
 imx@lists.linux.dev, linux-rockchip@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 07/19] arm64: dts: qcom: msm8992-lg-h815: Fix CPU node
 "enable-method" property dependencies
Date: Sat, 05 Apr 2025 14:42:21 +0000
Message-ID: <4999945.OV4Wx5bFTl@stinkpad>
In-Reply-To: <d3592f32-e29c-4b40-b045-7267795a9617@oss.qualcomm.com>
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <470e2155-7145-44ab-9d6d-117a2d98d7f8@oss.qualcomm.com>
 <d3592f32-e29c-4b40-b045-7267795a9617@oss.qualcomm.com>
MIME-Version: 1.0
Autocrypt: addr=alexander.reimelt@posteo.de;
  keydata=xjMEZg0fSRYJKwYBBAHaRw8BAQdAIcaNTdj3NWDe5HQPCUs6oYyQygAJWP9LCzhr+C7RwMrNG2Fs
  ZXhhbmRlci5yZWltZWx0QHBvc3Rlby5kZcKZBBMWCgBBFiEEM+Wy6sI/mP5S0zIFHqi3OKk8uRIF
  AmYNH0kCGwMFCQWjo9cFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQHqi3OKk8uRJ8ogD9
  EVg4zgfmC2SqXCgms6LETAzVX4CrAS8yMhyd7Md921cA/R8lhm9B96RYgA7MvFPFJb1T6JFY75Jg
  QLXrtIE5llwHzjgEZg0fSRIKKwYBBAGXVQEFAQEHQBGDuxZLOTvppxyM4G18fSR6xzT0xkkPOia7
  Bh6L1vAAAwEIB8J+BBgWCgAmFiEEM+Wy6sI/mP5S0zIFHqi3OKk8uRIFAmYNH0kCGwwFCQWjo9cA
  CgkQHqi3OKk8uRIa1wD8CZDdCAKXstgXY96eeSSP7MecEF5TBdmWOiVgjlEIpoEA/RnGuDaj06B1
  F51wyGAjYXSmn5qFoNHu3yXyLUkFz1ME
OpenPGP: url=https://posteo.de/keys/alexander.reimelt@posteo.de.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250405_074233_648418_B52113FD 
X-CRM114-Status: GOOD (  13.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> On 4/4/25 10:30 PM, Konrad Dybcio wrote:
> > On 4/4/25 4:59 AM, Rob Herring (Arm) wrote:
> >> The "spin-table" enable-method requires "cpu-release-addr" property,
> >> so add a dummy entry. It is assumed the bootloader will fill in the
> >> correct values.
> >> 
> >> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> >> ---
> > 
> > This looks good to me without knowing any better about the specifics
> > of this device..
> > 
> > +Alexander - does the bootloader you use take care of this? Otherwise
> > we can just do what Sony devices do and stop on removing the psci node

I currently can't test this, but the bootloader (lk2nd) will set it.

Alexander



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
