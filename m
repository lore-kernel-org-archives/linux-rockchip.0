Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67612D12D59
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Nov 2024 23:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Y6uajJq4aN5bJ3PPlGTZHKkzUMQnM/uWMSu/l2bnIE=; b=uOGoLb5Gn1eU9/
	67uzj90dnfKH4ViNp9H+mkOijO5jE7LtP6GQb959Zjfb0bGaSjJ7/N2r6eLJNuHjVH5ggT8xCp2IO
	B/2K4MWsffcH2xEQeIrEr+gRL7JHMtMhA9AavdkgZaqNMUD9hCNGsOaDo63WtDQXYJOxXAOrpmwrV
	SdJhIREsapzdgIBM+orbIqXPJyRiNgJoJo+JyPjqZJAX62jwLJUBtvDumhy94WrHPHVcjKc+Ap4vA
	dJsiM5EMMg9boWsZn5gnzPfScHw15rx9hgwdKvHIwbZ7NmqzbUBzLoSnTvOibLdrJttfg4nKr87r6
	OP1aLLYBw2o+KrzSUN1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAHhJ-0000000FuCf-1n6U;
	Sun, 10 Nov 2024 23:50:25 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAHhG-0000000FuC6-0ppH
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Nov 2024 23:50:24 +0000
X-QQ-mid: bizesmtpip3t1731282543tgxeos8
X-QQ-Originating-IP: PWS1YtnGh1qsLOHKhwPI0ruBFkkmhb83c2QVyKeTzos=
Received: from [IPV6:240f:10b:7440:1:e6be:7b31 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 11 Nov 2024 07:48:58 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14112910990418840839
Message-ID: <EF2C2A37FE988DA0+32f2e055-1ffb-4dce-b7a9-c77b80d6ffbe@radxa.com>
Date: Mon, 11 Nov 2024 08:48:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 RESEND 1/3] dt-bindings: arm: rockchip: add Radxa ROCK
 5C
To: Heiko Stuebner <heiko@sntech.de>
Cc: jagan@edgeble.ai, conor+dt@kernel.org, jing@jing.rocks,
 macromorgan@hotmail.com, michael.riesch@wolfvision.net,
 devicetree@vger.kernel.org, krzk+dt@kernel.org, jonas@kwiboo.se,
 andyshrk@163.com, cfsworks@gmail.com, tim@feathertop.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 robh@kernel.org, dsimic@manjaro.org, sebastian.reichel@collabora.com
References: <20241021090548.1052-1-naoki@radxa.com>
 <173126942620.136493.15655197689835452655.b4-ty@sntech.de>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <173126942620.136493.15655197689835452655.b4-ty@sntech.de>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NU/xC8AZ/a7LWFrTl6LxPNqfgfWkiB6jExMv9FXc77IMeiw1pNVrXQij
	ZEgKgXTxS9/4yY0i/nQwGFSaZOtE4HTS3etYch45ioQzkUHHKHyvHzyASorZ37uOd8Qcfju
	thHrvwLy7xgLAHRvvblCbSalDS802e21TOAkKXI/stjSM7RvkRgZKhr3Ug1Esth4Itsv3mt
	KizESZ66GVTtBuzJqScdj3jmPIckucYseIByoA1W/fEiv1+6M56if2wnNtLQh6YOgU6Ztrw
	+D89eNctyI1Hratm+1Cfa27d643QZoznTN9H+NjczbwOWtEDWQrFxqxKMsGYN4YFlTVFs1P
	0xVi5sdAxeh3kFCHTJTKHYNNY8WkG+n5mYMEZvoxd+xBTiOXaNKh0mvAtE2MWYxYNRj2ndv
	Jp1sSkI3LE+/pGTK3r2y549cYJV3Fn8LvJfYa51+pgTM+IaVMykWJF/41LpftRAOLhjaByw
	RfUyhaRNQvx+9+KjOF3JVbYAEYpBeYICewMYMqxrJmfEM3/WW98b9N1Qf+Zg2HN4wQ9V/2j
	bJ5XtG7TVAlgQ3MyazF2yBJYmxEgFe9ZcGuDUacM2mN0GDtIrFXxGHKXhsr4lLiwzept8fP
	DflvruSNrMPqDVQP0otsYiDNBOhF+nQzUIFOnH4kMvWnRaVKqVZVL09fWNPfZLJZjBux6gn
	QCCPi5wxH3CqCJW86MyOMYsNfauZtrMKdRrMOi5blQeXoLlHqeIsv7K22muGtbTyPSY0Coc
	gQl4UZ3s/yNoQzCYZNciFfL7gAGcjsPVMiKKXeo3NcH+4MqMEw2wjlbtcwwuo+HGuqMAocq
	tdqSDghLxnylmC+VHPL8dVoobW1mjmqqf/X7u9InzxCIdc7gc/lxOLJjmSxqelpBCYXop5e
	Nt94dRQeWOkMIXgj7efby7SgiyldUOGqwY7ANfPQmx4gb+jKkWa7Nhwy8mltE+yQc8U6GoX
	uboHBOHYZoAK2Xw==
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241110_155022_628472_9EB11DB9 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
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

Hi,

Thanks!

On 11/11/24 05:13, Heiko Stuebner wrote:
> On Mon, 21 Oct 2024 09:05:46 +0000, FUKAUMI Naoki wrote:
>> Add devicetree binding for the Radxa ROCK 5C.
>>
>> Radxa ROCK 5C is a 8K computer for everything[1] using the Rockchip
>> RK3588S2 chip.
>>
>> [1] https://radxa.com/products/rock5/5c
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/3] dt-bindings: arm: rockchip: add Radxa ROCK 5C
>        commit: 3920c37ea8ddc43e8f54083ed227f123acfa6ed2
> [2/3] arm64: dts: rockchip: add Radxa ROCK 5C
>        commit: 0173113ea6d7646fa0d7fd4d09b272d38a9ab9af

I forgot to add cd-gpios in sdmmc ;)
I'll make fix patch soon.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> [3/3] arm64: dts: rockchip: Enable HDMI0 on rock-5c
>        --> I've folded this patch into patch2, as the hdmi
>            controller on rk3588 was added earlier.
> 
> Best regards,



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
