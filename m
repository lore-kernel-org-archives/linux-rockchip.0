Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DAD1C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 17:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CvVg+DliuVnHHKEXC778+m8MiaukProhCZMrpVHSoGg=; b=v5lDVbjKndYMoEmvFmAtLkEV13
	QeUkpmDwH1UVQgqlgBBwPzl1COfbmhcBDBst/JQkD4q4kaK0MMDoQ36rNkmndMpldSAF13Y1wf2Jk
	ePFWsew2CWgkFUJ8ssZ80t4/MKBW/EPCgiYuC+KrgmwwYfaz/098Qlm6Op4wm3eAORnMY5OoX8Dfw
	3SwonTnLA5NHTcdcHE1zJcWysTHr4NRjM4UsQb3LmIVXWKGrM1MsEK846LhaA8xn0Dz52MuMhSjD+
	ocOXYVvqbCjdClugC5Z23OmplyXjAbFNw6ULwAeSa4Qyfe900H4SYBa3A3/6qsIRtsT6Z3p+STd6f
	Ptkcj/kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkUO-00000005pi2-3UYw;
	Wed, 07 Aug 2024 17:30:20 +0000
Received: from mail.flokli.de ([2a01:4f8:1c1e:e12f::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkT3-00000005pP7-4AGC;
	Wed, 07 Aug 2024 17:28:59 +0000
Date: Wed, 7 Aug 2024 20:28:54 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flokli.de; s=mail;
	t=1723051735; bh=rHo5vM6cqAZ+OgnVua1TaGhVLFcBFB3aUwuIxSftVwA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JlO/hfdUSeW9lyknaUkJwym9NccGsVaiBIKvyLsM6kaVMI+/EVLvPzQ6J0jqpBBhY
	 JeWpvRhH6sr9P36rVsoiihl51JSy965kQDNQzDL2rU3ZHwMJcmBp+k9HrSAio3mezi
	 Wd0w1Wizq+UQoc85UVzLJElJ55ZFNDBk7eAJ9GPg=
From: Florian Klink <flokli@flokli.de>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Muhammed Efe Cetin <efectn@protonmail.com>, FUKAUMI Naoki <naoki@radxa.com>, 
	=?utf-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@protonmail.ch>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi
 on orangepi-5-plus
Message-ID: <q7db4syvuz3qsssgznjnwujm25gzmxdf7n5dzjhmmwsaxssk5e@5ecftp23wc7p>
References: <20240807162001.1737829-1-flokli@flokli.de>
 <20240807170030.1747381-1-flokli@flokli.de>
 <c1cd51655f783d9ec2f6f068590c2a35@manjaro.org>
 <4364452.rE2NhlSrgm@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4364452.rE2NhlSrgm@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_102858_256928_41E9C413 
X-CRM114-Status: GOOD (  15.86  )
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey,

On Wed, Aug 07, 2024 at 07:17:49PM GMT, Heiko St=FCbner wrote:
>Hi Florian,
>
>Am Mittwoch, 7. August 2024, 19:15:03 CEST schrieb Dragan Simic:
>> On 2024-08-07 19:00, Florian Klink wrote:
>> > This follows the same logic as 82d40b141a4c ("arm64: dts: rockchip: add
>> > rfkill node for M.2 Key E WiFi on rock-5b").
>> >
>> > On the orangepi-5-plus, there's also a GPIO pin connecting the WiFi
>> > enable signal inside the M.2 Key E slot.
>> >
>> > The exact GPIO PIN can be validated in the Armbian rk-5.10-rkr4 kernel
>> > rk3588-orangepi-5-plus.dtsi file [1], which contains a `wifi_disable`
>> > node referencing RK_PC4 on &gpio0.
>> >
>> > Signed-off-by: Florian Klink <flokli@flokli.de>
>> > Tested-by: Florian Klink <flokli@flokli.de>
>> > Link:
>> > https://github.com/armbian/linux-rockchip/blob/9fbe23c9da24f236c6009f4=
2d3f02c1ffb84c169/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
>> > [1]
>>
>> Unfortunately, this isn't how the "Link: ..." tag is to be used, or how
>> a reference is to be provided.  Please see the patch submission linked
>> below for a correct example of providing links as references.
>>
>> https://lore.kernel.org/linux-rockchip/4449f7d4eead787308300e2d1d37b88c9=
d1446b2.1717308862.git.dsimic@manjaro.org/T/#u
>
>please also don't post v2 patches as replies to v1.
>Instead start a new mail thread please.
>
>A lot of tooling cannot really find the correct version in such
>multiversion threads.

sorry for the noise. I sent a v3, addressing the requested changes, as a
new thread.

Somewhat offtopic for this patch, but it'd be great if
process/submitting-patches.html could include:

  - A mention of the kernel quotation style for commit ids and subjects
	 and how to produce them
  - A styleguide for how to link to references
  - An active discouragement from using --in-reply-to for v2 (which
	 differs from what `git send-email` proposes).

Florian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
