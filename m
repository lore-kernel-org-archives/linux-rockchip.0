Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27549C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Apr 2024 16:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LnDfYk14ruyQI4RTAFq47OmCQv1Ki4ej02llc4Pe98U=; b=XrCpUH+xT4lUvnVX7kk74LCfas
	lt/4bCMlFmue6cQXyPVivGG6yIqu0/Ua0O7IZkbeDMzVczaoF8bVS1SgAJLSh3sfuhy8Ng5W+WT6r
	nVuuGA4/bZEDeLjVhWcUSnWpyAguqXV7wvn8Dv7GgenxzUOZ4kLN/WCaWKfhqm4r1dL2kEBYRBLwf
	b4dxENKTwO3VmfI9hkVPU5vf6DtOb6Z4reR532veleLlPLAcGzX/RuVXlNavi4v3iQY6jOyiBmAG6
	XlmAwhlSZ/1MmXpsusfZ02frC30fQjjL/oVNfso23PcerBxc2e3y0TvRqx8GmgExAc3Va4mp6u89l
	IZyQjsmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryZjC-0000000An47-3LsL;
	Sun, 21 Apr 2024 16:07:42 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryZj8-0000000Amzh-1q59;
	Sun, 21 Apr 2024 16:07:40 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713715655;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VsbWtpJGTpVE59gMLUthsI5owfAuS8vpivZIQQQ1eIA=;
	b=Bdvv0JdpiuYrX4w/mGLWCWpiWk0/76kKVfTbP11g+yKcyKSMt7DoVECfFRf//g1f8moZcs
	zoUj0XNxDvp4JjNqPwYHHPCMHtc1N+2wRJnV20rCigi2zj1UQu+Eo7Oft2hGEwr39zGhQq
	X6l4ak3NsRp9S2N1ZYxHk3BmSao95pAqBwIpiA9uom9q24Hwfazaejk8IRRUDy9T6NaXEB
	DxECT69Kpvyu8V5ICo/ChhcwEM4+kCKxnMUo3/Ybr8Jb/6tGWSLSppykuRAaNLlxI1DB4O
	VGgVrLNgUFF+4YXZg+Atf7LJqZPr9GBEdJvHqZHhnYtAeW2/7A9+qnAcOQ08UA==
Date: Sun, 21 Apr 2024 18:07:34 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/5] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
In-Reply-To: <3068718.7t0mGDVaCv@bagend>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <66689051.MzlzmSNrL9@bagend> <9f4c7615a6685ac42dccdbe35e57c357@manjaro.org>
 <3068718.7t0mGDVaCv@bagend>
Message-ID: <51b07f627c5e16461d9c38dc41c0b957@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240421_090738_866732_AE89843E 
X-CRM114-Status: GOOD (  15.63  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Diederik,

On 2024-04-20 19:53, Diederik de Haas wrote:
> On Wednesday, 10 April 2024 11:28:09 CEST Dragan Simic wrote:
>> > Can you rebase this patch set on Heiko's for-next branch [1]?
>> > And then also fix the ordering of the nodes and the elements within
>> > those nodes so that they match the current conventions?
>> 
>> Ah, thanks, this is a good reminder about the proposal for the plan
>> for moving forward, which I promised to send a while ago. :)
>> 
>>> [1] 
>>> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=for-next
> 
> I build a (Debian) kernel based off 6.9-rc4 + a whole bunch of patches,
> including this patch series. I got someone on #debian-arm to try it out 
> on a
> Rock 5B and the dmesg output showed a number of items wrt thermal and 
> OPP.
> 
> Some items that I filtered out from that dmesg output:
> 
> [    3.211716] hwmon hwmon0: temp1_input not attached to any thermal 
> zone
> [    3.908339] panthor fb000000.gpu: EM: OPP:900000 is inefficient
> [   10.473061] cpu cpu0: EM: OPP:600000 is inefficient
> [   10.473233] energy_model: Accessing cpu4 policy failed
> [   10.585236] rockchip-thermal fec00000.tsadc: Missing rockchip,grf 
> property
> 
> Attached is the full list of items I collected from that dmesg output 
> which
> seem worth investigating.
> 
> Maybe useful to investigate when moving forward?

This is a nice report, thanks!

I'm not sure what's going on with the mmc2 issues.  Regarding the 
hym8563,
hwmon, energy_model and rockchip-spi issues, I'll have a look into them
and come back with an update.

Regarding the multiple "OPP:<frequency> is inefficient" warnings, it's
already on my TO-DO list to perform a detailed (and repeatable) testing.
My suspicion is that declaring the OPPs as inefficient actually isn't
warranted, but we'll see what will be the test results.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
