Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C224D3C92D
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Oct 2024 18:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XgxnNDZ6gSseR3JT45lRA79pYn2qfpokdBgfbmtVRLc=; b=WMPjtiP/ZIsvnKxjN+BPkUA8Qu
	5mz/o5gS5wkfE116JqZLNQ0vFpjZpuX3Gs7cCcS39Wc0y7TR+GfE6UD84OMhco8I6fGguVCAp/dbb
	44uTsdikij93RCjaOpz8YQG2VN45ALD4vdchpvaFcFUJbVvG9ICgl3GqnTi+hBXGFapTXX1prl8bs
	dAp2q+Wxv8Goly5TGFRJafw3MCo3mucfPyiW74mRSTBPkfwYQCoj4QGctGBcx3DDrjigJ8Qwh+k8D
	p5ARx/M3C9WqbXTj54ICVs4Yjqre+uSHW4HpceqCPB/nOSXCB0iO3c7HtXChMVeYNDts3bmVweH2x
	uAqB7ijA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2aLU-00000005EUQ-1fj1;
	Sun, 20 Oct 2024 18:08:04 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2aHm-00000005E9Z-13ka;
	Sun, 20 Oct 2024 18:04:16 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1729447449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EUk2djnV1e9rrtO5Qm3LygELN8tFQ9aXm6rOK5MKU9Q=;
	b=d9AB/8b2OufsQjJ/nWN/iyh+Lmh1FrMehf3Vvc0VLm2FZjbp4d6ezD9YhnUQeZmtO+ZLWJ
	N5VLCZA5vJY5hVKOZRrqXmNozrC4pBTmpAzbbegrNKEdCfY9iJ/PiWz2Vn7JPoJjzdrWek
	10Zf3VzH1zf5B2xdpkvWtpcHLt1DVm2l2/gd+0v4ZH24gC2H3I2YkM6+7jBq4Sl63G5RwE
	rzqxfycXTRMr7PUPgJSXWAvo2hp9Eb987j84bPkipJNI23x6YRC8dBQpq5SRQ8Vi18eHMU
	8ZR2xqa1EykocjzTMjV0yWOlPbsQnlAe5rs1riXNr9Ku+fdqqfQriXJmArnsMg==
Date: Sun, 20 Oct 2024 20:04:09 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Prepare RK356x SoC dtsi files
 for per-variant OPPs
In-Reply-To: <D4ZZFL98AMFI.1TDPL2DJPSQ3D@cknow.org>
References: <cover.1728752527.git.dsimic@manjaro.org>
 <cc2aed3116a57dd50e2bb15ab41b12784adfafe3.1728752527.git.dsimic@manjaro.org>
 <D4U30AUOH6UR.1QPH47KN5EWE4@cknow.org>
 <D4ZZFL98AMFI.1TDPL2DJPSQ3D@cknow.org>
Message-ID: <6567146d2dfb0287e482ec1c441b31d9@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_110414_776908_C605D164 
X-CRM114-Status: GOOD (  14.46  )
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

On 2024-10-19 20:09, Diederik de Haas wrote:
> On Sat Oct 12, 2024 at 9:41 PM CEST, Diederik de Haas wrote:
>> On Sat Oct 12, 2024 at 7:04 PM CEST, Dragan Simic wrote:
>> >
>> > -&pipegrf {
>> > -	compatible = "rockchip,rk3566-pipe-grf", "syscon";
>> 
>> This seems unrelated?
>> 
>> > +&cpu0 {
>> > +	operating-points-v2 = <&cpu0_opp_table>;
>> >  };
>> >
>> > -&power {
>> > -	power-domain@RK3568_PD_PIPE {
>> > -		reg = <RK3568_PD_PIPE>;
>> > -		clocks = <&cru PCLK_PIPE>;
>> > -		pm_qos = <&qos_pcie2x1>,
>> > -			 <&qos_sata1>,
>> > -			 <&qos_sata2>,
>> > -			 <&qos_usb3_0>,
>> > -			 <&qos_usb3_1>;
>> > -		#power-domain-cells = <0>;
>> > -	};
>> 
>> This seems unrelated to me and possibly a functional change?
>> If this was intended, then a description in the commit message would 
>> be
>> nice why this is appropriate and possibly moved to a separate patch?
>> 
>> > +&cpu1 {
>> > +	operating-points-v2 = <&cpu0_opp_table>;
>> > +};
>> > +
>> > +&cpu2 {
>> > +	operating-points-v2 = <&cpu0_opp_table>;
>> >  };
>> >
>> > -&usb_host0_xhci {
>> > -	phys = <&usb2phy0_otg>;
>> > -	phy-names = "usb2-phy";
>> > -	extcon = <&usb2phy0>;
>> > -	maximum-speed = "high-speed";
>> 
>> This also looks unrelated and a functional change?
>> 
>> > +&cpu3 {
>> > +	operating-points-v2 = <&cpu0_opp_table>;
>> >  };
>> >
>> > -&vop {
>> > -	compatible = "rockchip,rk3566-vop";
>> 
>> This also looks unrelated?
> 
> It turns out I was wrong.
> The elements I thought were removed, aren't removed.
> 
> Sorry for the noise.

No worries.  I tried to tune and adjust the patch generation
parameters as best as possible, but some parts of the produced
patches still remained slightly confusing.

By the way, a few months ago there was a discussion on the Git
mailing list about making Git perform such parameter adjustment
magic itself, which back then seemed like a good idea to me,
but after dealing with a few rather complex patches myself, I
no longer think that's actually possible.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
