Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96D00CD11BF
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 12:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evVSAa7a324SnMSQcLKZRMHSzTosArSnlTRP6VXLLIM=; b=EoNyqLub7curqG
	vvZausoU7KtZzL3vyvBKpmOGDQXs1NtP2rQ+kBoqIYQ/9o04oTJMXK2P/3g+SPcCxEXhDVQRgR+ho
	nTJxuVCRDEJ5KMXyjqi/61ynYJdXrFDdSmB/ajqMQL1wmiv31g335cAxelMfBUB+ODBZDmfEtwtlz
	ZZV1ODKA6VU2HS15N9t3wJzAIM9P+ngTdKi/c9O1Iqy4oxFbJLl4LyClAI3ypYM940v+CXcEoaEN8
	AiTEdOsPDUeyGnSWMxBMaw1HOOEba09iUEwEnwDhF2Eu9Nomugx/vT+487p3CMVFGvr7ggUPK6x1v
	ISjHLBYunDURA/ayy5BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roMp2-0000000CWs9-0faG;
	Sun, 24 Mar 2024 12:19:32 +0000
Received: from mail-4317.proton.ch ([185.70.43.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roMoy-0000000CWqm-2jan
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Mar 2024 12:19:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thefossguy.com;
	s=protonmail; t=1711282764; x=1711541964;
	bh=yBX68Xikv2rP8bZjBVlK9D0R5VpbUnY1v5WiTs3tP1Q=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Kn3U7uFEgnmGYtPYg5gvtf/OVEvxfIID8t+IFT+N0wyTW8X3JNhI4YTEFib7Unptk
	 E0lBJvJAmkY251WCN0cSGDOGbhTF1AmQ977yEurro3Ju+4KZZgje6JPcNSEXe00TcV
	 z/lQo7/ffocEy5bTR7HgciCxVDxZ/9wOcdCNw+Yo55HjHeqcEYA80GZC50k4ClUZ/P
	 DWf8PUkHVLah9POZm9Nf4UFXKmv9kw0wB+NNjfdDpgaLDALVHbJeYOgXclFtBnTlaG
	 hRONLTTUN2HKZgGub5I0Nmu06SbbhAyk5A6gXggqZ6chxLfppdyE09OrHxXQlmQF4E
	 QWzwRefySnf7Q==
Date: Sun, 24 Mar 2024 12:19:10 +0000
To: Linux regressions mailing list <regressions@lists.linux.dev>
From: Pratham Patel <prathampatel@thefossguy.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: disable analog audio for rock-5b
Message-ID: <MVRWlsBI3ytGeanEiplqESaeJxicfYRfOPHHhMJTQNRzd8XWTWlOoIFc949rG06cF_DAj5EpN2vMRFt3s34Di5nzfVgTfbWAH4A9R6SfqeI=@thefossguy.com>
In-Reply-To: <db6ae45b-ff34-433f-8a31-1547423768ce@leemhuis.info>
References: <20240324062816.145858-1-prathampatel@thefossguy.com> <0005257d-8022-4a66-a802-0c920d259ccd@linaro.org> <TbQeSy-AWAKVHo2Alb8hXUvplVNvohDJ2ztRM1x3Fo5PMmGLMsJxtHR-OIms9FlUshfUD9x45EghBCB9gVtcUPlxeMRUJQ_C95DVhu3AJrk=@thefossguy.com> <XJ_dGL-0X07dJ8GOKvrXbRD2FAHN1A7keAtohcSaU41DEF0FbeWwswLEqkrYiwwulyXDwJ6SZHfWukhHO3t3tOWX7ZGM7ya9lwXfn8Xh1nU=@thefossguy.com> <db6ae45b-ff34-433f-8a31-1547423768ce@leemhuis.info>
Feedback-ID: 104309535:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_051928_852050_4AD54EB5 
X-CRM114-Status: GOOD (  14.18  )
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






On Sunday, March 24th, 2024 at 17:44, Linux regression tracking (Thorsten Leemhuis) <regressions@leemhuis.info> wrote:

> 
> 
> On 24.03.24 12:43, Pratham Patel wrote:
> 
> > On Sunday, March 24th, 2024 at 16:51, Pratham Patel prathampatel@thefossguy.com wrote:
> > 
> > > On Sunday, March 24th, 2024 at 16:15, Krzysztof Kozlowski krzysztof.kozlowski@linaro.org wrote:
> > > 
> > > > > + /*
> > > > > + *analog-sound {
> > > > > + * compatible = "audio-graph-card";
> > > > > + * label = "rk3588-es8316";
> > > > 
> > > > Do not comment out code. Instead disable the nodes and provide
> > > > appropriate comment describing reason.
> > > 
> > > I tried changing the status from okay to disabled. That didn't work. The SBC
> > > still locked up during boot.
> > 
> > I think setting the status to fail should do the trick, instead of setting it to disabled.
> > Will try that and be back with a v2.
> 
> 
> Please CC the author of the change that broke things when submitting v2,
> which you afaics failed to do in this thread.
>  
> Ciao, Thorsten

Ack, will do.

 -- Pratham Patel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
