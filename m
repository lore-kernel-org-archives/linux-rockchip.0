Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E20FCCFA03
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 12:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ud+7GYVNELmPrS/gfqohKd41QgpwsVbsHGzELCmcXyg=; b=WhoRewF0YxgT+i
	gbaRQVwHk0xHYonS8AlnEM5mK10qbkqouii6vpZv18qt2AUr3Y6UuVu1vvsI+IllZ5Vf7mqVL7KVw
	q9S68XBHjGarKEXcm241VEshC9dRSU77UvinGS27ZeJc8yrGinxg6hZpqMUddcZ7xjsjqM+8Kivms
	6hgJ3b0Vrivi+RITUCHk0NZ9NmeniVLBFS2NVlnH8qXdPXD80B2sQjmVziqAjk4R1chcvDy2EatY8
	N6VdN/RgLyvpmjk7MuwEWq0o5TythArlFXRajzbrJO2thv/dw6RNIt49Ok1TZU89uzeEpuaxFWYfk
	yQAWHlnca8Q72in6WtoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGz6j-0000000FRda-42F3;
	Thu, 06 Nov 2025 12:28:54 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFEwg-00000007xWH-0azj;
	Sat, 01 Nov 2025 16:59:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id CCC2240E64;
	Sat,  1 Nov 2025 17:59:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762016353; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=sMl6CrU8n9CPvD/7RHfQqN/cNpPavM10Xf1mdRiKWUw=;
	b=FVUHwmBSEL5aIJ1c0fb9aFCKPuK5Q4UuwIsQwmfnSdy+fV2DoLZD3oOJZmi2IPmcIknZbY
	kkUl+o77eAkhizFN4RQYHs6VMvMVLSO1sWarxs3ru82X+lsvrlL0HLGQG14g+MdXZ+2GcE
	ZUq+Bvhq9zD99aTrCpND48sG4M6JuHYYWqainbbKXAlRV7sncpYMv4LwiQFBFvf0CLlv0q
	mr8wDYB6y0NfNxUVpPRCIlxyvZJTwn2anq8yvRGdZ0OpSlLUpObtgok6uYON/Nx4VELUw3
	ynSOhbmPebWOx/fFS/MV88pgMrfEzN68Ym+BWXqkc/TnE7Yk2AeZwmICdOCd3w==
From: "Dragan Simic" <dsimic@manjaro.org>
Date: Sat, 01 Nov 2025 17:59:10 +0100
Cc: "Heiko Stuebner" <heiko@sntech.de>, "Alexey Charkov" <alchark@gmail.com>, conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh@kernel.org
To: "Hugh Cole-Baker" <sigmaris@gmail.com>
MIME-Version: 1.0
Message-ID: <0ac61ea1-9e22-7101-646d-694e350ec1b4@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= pwm-fan overlay for NanoPC-T6
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_095918_607156_7DA8EBB5 
X-CRM114-Status: GOOD (  21.14  )
X-Mailman-Approved-At: Thu, 06 Nov 2025 04:28:36 -0800
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

Hello Hugh,

On Saturday, November 01, 2025 14:14 CET, Hugh Cole-Baker <sigmaris@gmail.com> wrote:
> On 01/11/2025 11:44, Heiko Stuebner wrote:
> > Personally, I'm more on the less complication side.
> > 
> > I.e. if there is an actual fan-connector on the board we should describe
> > it as such.
> > 
> > Overlays I see for things where you attach hats to generic pin headers
> > to create specific functionality on top of a generic interface.
> > 
> > But if the board itself has an actual fan header, it should be described
> > as such. Because that then _is_ the standard use of that.
> 
> The board does have a fan connector, just no fan by default. But anyway,
> since it sounds like the preferred approach I'll send a v2 which puts the
> fan into the base board .dts.
> 
> Dragan, you mentioned there's no need for more than 2 trip points - if
> I remove the trip points between "SoC is warm, start fan at slow speed"
> and "SoC is v. hot, run fan at full speed" is the OS/kernel expected to
> interpolate between those 2 trip points (if you have a link to docs or
> code about this it'd be interesting, I couldn't find anything in the
> dt-bindings)?

True, that isn't described in the bindings, because it basically
doesn't belong there.  Thus, the most specific description of the
associated cooling stuff, as provided by the bindings, is the
following excerpt from Documentation/devicetree/bindings/thermal/
thermal-zones.yaml:

  209 cooling-device:
  210   $ref: /schemas/types.yaml#/definitions/phandle-array
  211   description:
  212     A list of cooling device phandles along with the minimum
  213     and maximum cooling state specifiers for each cooling
  214     device. Using the THERMAL_NO_LIMIT (-1UL) constant in the
  215     cooling-device phandle limit specifier lets the framework
  216     use the minimum and maximum cooling state for that cooling
  217     device automatically.

That's where the cooling hardware description ends, so that's also
where the associated binding ends.  Everything else belongs to the
thermal governors, because they actually decide on how to best use
the available cooling features.

For example, the chain of events may look like this:

  (1) The rockchip_thermal_alarm_irq_thread() function, defined in
      drivers/thermal/rockchip_thermal.c, gets triggered by TSADC
      within the parameters of DT-defined "active" trip types

  (2) It calls the thermal_zone_device_update() function defined
      in drivers/thermal/thermal_core.c

  (3) This ends up calling the step_wise_manage() function that's
      defined in drivers/thermal/gov_step_wise.c, which handles
      the previously triggered "active" trip

  (4) This calls the drivers/thermal/gov_step_wise.c's locally
      defined thermal_zone_trip_update() and get_target_state()
      functions, which end up ramping the fan speed up and down
      as needed, while respecting the upper and lower limits
      defined through the "cooling-device" DT map properties,
      which correspond to the "cooling-levels" defined in the
      DT fan property

Here's also an excerpt from drivers/thermal/gov_step_wise.c, which
confirms all this and explains it a bit further:

  113  /*
  114   * Throttling Logic: Use the trend of the thermal zone to throttle.
  115   * If the thermal zone is 'heating up', throttle all of the cooling
  116   * devices associated with each trip point by one step. If the zone
  117   * is 'cooling down', it brings back the performance of the devices
  118   * by one step.
  119   */

With all that in mind, the fan will ramp its speed up and down
nicely, according to the current temperature, with no need for
having multiple manually defined steps.

The intended benefit of having the two usual, distinct "active"
thermal trips and cooling maps is to lower the fan-induced noise
a bit while not affecting the cooling much.  This is all visible
in rk3399-rockpro64.dtsi, for example.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
