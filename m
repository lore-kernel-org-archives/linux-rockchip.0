Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 357F5C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 May 2023 09:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cRAAPV0kCHkZdmRRhGVNKMiKGdcgV8gjK84OYPt/Tw=; b=hN9rSh7XHqbKUh
	8focBIeP4fnVBfrPq72khf9mxYBDkHky0cYHBVW+8p5HyCvtYnprcNQYwAVJ5rA/2CWjWCjaeMP1i
	j5zoRAm0CeJJOOTahEXXOmi2O1GvuiHWzWcej6xT40amCviX1a4UOUCZiprJWTy9ci2xGLJ+1t4+O
	fLJFajdkyqejDq0l4mKmdgUpyZSxM9k6SPhSSJc2v8Va8azfLZsRyByykE0pt0k8jfeCzMLOz0Hwu
	N5HTHORCwwaf8IxIbSB3T910TYQQclF9WrfDeFxQApA2G/jRIa7Amjv3ciy3eFmi2ec6MZLL3oATp
	NvAZtr9pKqSgQRt01Ckw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwJpk-002lwv-2p;
	Tue, 09 May 2023 09:40:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwJph-002lw2-2O;
	Tue, 09 May 2023 09:40:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AA0C362962;
	Tue,  9 May 2023 09:40:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 826B6C433EF;
	Tue,  9 May 2023 09:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683625231;
	bh=Kyhm7MaVICyI15ntu0cgbZrruGeMDWXHLCmlVW1dqY4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qJYrWEYh+zu1pCza2GIXwt2xBcC0njPEwqgQiRDDU/LSL6tTh9gyt8CWQuKkRhAM/
	 ugi98K+wLV6Y9O3I8NUvRcH7Nm1bDBGicvHHJA3kbMQ6rh0t6glmGiOdnL2wBlYeut
	 DRWA6lXEVHpeUFfFuV3tZB1KnCCd2pvL32zIze4hWg11suBQrgk1seP/S5h/b+6fLN
	 JDxhUBTRO6IFQuypDUWQJ4sQiClzBwqDMroUWdo/wrpePSNx38ZxL9h/mzOLVfQWSs
	 PLrDCTTIEK3k2oxvmtQR0Xm9IeBnh4jYWdSI738W5Idy0+UvSu/iUogNYT+Q7po2BD
	 KvlIG0cUxV25Q==
Message-ID: <326c57b3-90b3-8d92-be10-34d03463d8d2@kernel.org>
Date: Tue, 9 May 2023 11:40:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 21/21] dt-bindings: devfreq: event: convert Rockchip
 DFI binding to yaml
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-22-s.hauer@pengutronix.de>
 <c0ee4c52-8d78-992a-22b0-911038a62b0e@kernel.org>
 <d505aba4-e345-44f0-fc70-33a69e0c5b7e@kernel.org>
 <20230509093728.GF29365@pengutronix.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230509093728.GF29365@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_024033_865163_FBAEF66B 
X-CRM114-Status: GOOD (  24.36  )
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

On 09/05/2023 11:37, Sascha Hauer wrote:
> On Fri, May 05, 2023 at 06:31:35PM +0200, Krzysztof Kozlowski wrote:
>> On 05/05/2023 18:29, Krzysztof Kozlowski wrote:
>>> On 05/05/2023 13:38, Sascha Hauer wrote:
>>>> Convert the Rockchip DFI binding to yaml. While at it add the newly
>>>> supported rk3568-dfi to the binding.
>>>>
>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>
>>> Please use scripts/get_maintainers.pl to get a list of necessary people
>>> and lists to CC.  It might happen, that command when run on an older
>>> kernel, gives you outdated entries.  Therefore please be sure you base
>>> your patches on recent Linux kernel.
>>>
>>> You missed at least DT list (maybe more), so this won't be tested.
>>> Please resend and include all necessary entries.
>>>
>>
>> Actually you already got such comments and nothing improved here. You
>> just resend same patch with same bugs.
>>
>> This is a waste of our time. Ignoring output of maintainers means there
>> is no testing and the patch does not appear in the inboxes.
>>
>> I don't understand why you insist on ignoring that output.
> 
> I skipped the device tree list because there was no change in the dts or
> binding part compared to the previous version.

Please always CC DT list and all maintainers. Just because something did
not change here, does not mean that nothing changed elsewhere, e.g. in
dependant schemas.

What's more, the binding should have changed because I asked to fix
several things.

> 
> But ok, it's worse. I only *intended* to not change the dts/binding
> part. In fact I did, because the things you mentioned were already fixed
> in an earlier version and I indeed ran dtbs_check and dt_binding_check on
> this ealier version.
> 
> Somehow old patches sneaked into this series. Sorry for that, I'll send
> a new version once I sorted this out.
> 
> Sascha
> 

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
