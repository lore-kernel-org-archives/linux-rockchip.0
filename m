Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04A9FC5CFCF
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 14:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUlHsV+CKQaZ6X3I1th+H/9bdqFg9PV1jXHHSCKf5NE=; b=DCj88C7WDUGk/4
	93Q2tg5Eer6aRbeeig3oYylQ5rejzOR7SOW9uQlsvYCKq5uhXKDfi9Lt6nQJBL+JvefQbq0oYbiAE
	P8Uo7GlMc1vmgxOadateC8+KH7NDEEbl7vSSqOf12G4/3y29mVKrKKIes2hwJFyCw48J+1JvCfL5x
	ChYse6eNlPQfKt4i7mY1FprLDitGOzCkaTumoG3XQovYryg7q/lwuS6Om3G3ZsTywKm4xDDkHkq5+
	GHHW3lGbJIKvdERH97plSzRud8fUy2o9qqFxdl0BaNfpp3wqTavEBWfSVSExC906RwoF0IILrnDPC
	u5tu/HEuint3+gPdMRMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtn3B-0000000E9Ok-2SpX;
	Tue, 11 Aug 2026 14:01:53 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtn39-0000000E9Mx-1eG4;
	Tue, 11 Aug 2026 14:01:52 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1786456882; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=iuiK3C4LcMuuAYXmzi8fmH4rIobNSTRbQuOLKD7s7cDn+17sSNrfTYNEOycgPnohwEc9XIySHVxfam3lekwmofRtTi27n2r2asJo9v2I8wS5uglq4ZF+7bfyMbf2DByctu5pyRtbk283WZczEPbqESzWhZ/g23myPaQBF4CeiaI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1786456882; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=QTfxfEAC0awN9pGH45+tTaenBH8A7dUoYGm7pbjaa2I=; 
	b=ErHxCO9IbTfIGd6wJVjZionZxuFsgvHPShn9LR62GylF52mp7/h4HwHvBkxDZtJPhRRJQgtH9F+dl9fkaz9lAuwuq1DT13BsFuqlIxk3wGoe9uNtxwGDIMBorbzm3FqAlsxqmk2xBM6JLePyMafI6WcI5LzbiyGR7VXNV0TU2dc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1786456882;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=QTfxfEAC0awN9pGH45+tTaenBH8A7dUoYGm7pbjaa2I=;
	b=jd1+QhTc8gfLci1PVGSkH1sM5/sZWgv3+AEyQc2wcPn99fYDlqFOuZXEf2pwCHtY
	F7UioO+Y3+m2B/dDA96KSn0mAtfYWornn/xjVpsLlAKGKuQlfPwPg4ohAMsmr+N8L7o
	hWdKqQXV+NTh0Mwq4QrTEf4rOJffpCaIynF/OoYg=
Received: by mx.zohomail.com with SMTPS id 1786456867632374.5144013643186;
	Tue, 11 Aug 2026 07:01:07 -0700 (PDT)
Message-ID: <816c3cc6-fe65-48fa-81d4-72026b66abcf@collabora.com>
Date: Tue, 11 Aug 2026 17:01:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] media: synopsys: hdmirx: add HDMI audio capture
 support
To: Igor Paunovic <royalnet026@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260721064115.64809-1-royalnet026@gmail.com>
 <20260805154039.10161-1-royalnet026@gmail.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20260805154039.10161-1-royalnet026@gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_070151_503985_D713EE7E 
X-CRM114-Status: UNSURE (   9.57  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 8/5/26 18:40, Igor Paunovic wrote:
> Hi Dmitry, Mauro,
> 
> First, belated thanks to Dmitry, Sebastian and Krzysztof for the reviews
> and testing across this series - much appreciated.
> 
> A gentle ping: all four patches carry Reviewed-by tags (2/4 also has
> Dmitry's Tested-by) and no changes have been requested since 23 July. Is
> there anything needed from my side for the series to be picked up into
> the media tree?
You can always send follow up patches separately, referencing to this
series in cover letter. It may take significant time before patches will
land to kernel tree. No need to wait.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
