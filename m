Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 479F4C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 16:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Beu/Qf7JjIdkzTnWkBGHbhjlypOD61zvErPjBReIgoo=; b=iakHPi+AlRj4mrVax8XCtWhSWh
	SGO4yQb/D96HdyxzrovY4K2ySlamQ4iqXkSezK8pj0dvJ7FJlrmw/hfRC490rLLKqpos50op78DiR
	hB7DyDCWtpQmhdRuutvCL3yWXvPJ/HMZHnWQ0NgCTBgBLN2rhxvk9ZHGRh0vbYjn6zYtOTvuW85Pp
	oFsaHewFS55U3tWTiKSVJOrTiDF8sdoysUqfXf/Gb6glatuaU2Zmzg458bRSCm9Hihx8aZ/B+wn7F
	DZaIFA+x6RCJwOJYchSbsFpkjANNgEwcIMP9nOtjzjA15wEL8/6LsJzrTxca1V3WBgidlsNVdx1iz
	VxZ1zqnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rABg9-00552T-2A;
	Mon, 04 Dec 2023 16:20:17 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rABg3-00550P-0C;
	Mon, 04 Dec 2023 16:20:13 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701706804;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ei0AfrTxppCNJPpWkXUKHARQoDXVj01I/xt3XpEpDOk=;
	b=e7yB0UOWUQ5vZJkft/UZvLG3evjPAYjr3Uk+dlKW13a90dCPz/oxZdtsKFSaX9nFPSr+Kh
	lHEMlx8BB58c4hJTORW1x3K/7rewGccMmgPWUMos+5MiBnCainQsrMzdJlsaFZudAv7np/
	5NKkLKPzBdaOJ+vHgicel+QjKNdYjmWmMRQfDFKhlauhnZCprP2Fq//K0YGxH93S7+uCqw
	MXmHvj/18GgnvCc2bSrcJbklJFOVakITZ6e9ewkM89wSSuFKvlmA30Q1pnSWYFOv6HAaCm
	Bl/OSfOPXYoPAZf8V5GHAKAMbb32bRCc3nQ6JIk5rqYVlurldeZWyphu2p7azw==
Date: Mon, 04 Dec 2023 17:19:59 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, Andrew Lunn
 <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson
 <andersson@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, Dmitry Baryshkov
 <dmitry.baryshkov@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Heiko Stuebner <heiko@sntech.de>, Jonathan Corbet <corbet@lwn.net>, Konrad
 Dybcio <konrad.dybcio@linaro.org>, Michal Simek <michal.simek@amd.com>, Neil
 Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>, Olof
 Johansson <olof@lixom.net>, =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?=
 <zajec5@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, workflows@vger.kernel.org,
 linux-doc@vger.kernel.org
Subject: Re: [PATCH v3] docs: dt-bindings: add DTS Coding Style document
In-Reply-To: <95bb3618-496d-4b55-a2f7-1b4200cbe420@linaro.org>
References: <20231125184422.12315-1-krzysztof.kozlowski@linaro.org>
 <63ec18b2758a9e385f446fb00b60ee69@manjaro.org>
 <0bcc0679-b883-4435-8843-cc830122c0e1@linaro.org>
 <83b413441a953e8f2bc56adf09511a80@manjaro.org>
 <7021717e2e747b9c119b7c5091b60bdf@manjaro.org>
 <95bb3618-496d-4b55-a2f7-1b4200cbe420@linaro.org>
Message-ID: <619db272718a608ac211266aa2fd05aa@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_082011_268741_03EF4C0C 
X-CRM114-Status: UNSURE (   9.43  )
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

On 2023-12-04 16:11, Krzysztof Kozlowski wrote:
> On 03/12/2023 21:12, Dragan Simic wrote:
>> Just a brief reminder about my suggestions below, which seemingly 
>> didn't
>> find their way into the v4.  At least the first one, which improves 
>> the
>> opening sentence, is worth including, IMHO.
>> 
> 
> I applied almost all your suggestions, except few which I disagreed 
> with
> in my replies.

Sure, but I got no response from you after I replied and offered 
different versions of the few suggestions you disagreed with.  I mean, 
none of those are too important, except the one about the opening 
sentence, which is currently a bit awkward, so it might be good to have 
it improved as suggested.  It's the opening sentence after all. :)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
