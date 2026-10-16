Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0681CCC6B38
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 10:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1T7uqr/g6Q9O+75C8favgvf2HVwizVIAR1eIbkC7Gsc=; b=waJ/cljn3dBOpL
	UkJlctph8z57QR9vmZiRO19SlCJLIczLOlUgiQhGnIV7JObvQHeslCZf4VfKro7pGgZFNQ9DrITkY
	VXLIgZf7qaRJHNZN2DDs0R2oSxx+SkeL5OV8uMeN5loMkGt027Z//aw0q6Z9Pnrssap23B2nVkfcB
	jpB1/N0yUs9x9TzQwBZi3YkMDqwyDaT+jLcNmjUbbCVVADuVwCbWnp3kzzXhGuLkBrsODpkXz/N8B
	dKDlIRg0/y0EtAPKJETxZF6JPCN2O/D2+g4YHsBAQOk+EJZmkW9OUWuu8YbYW3A7RcUbLQE+DTJRF
	CCArPsECzei32X7XbUew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfSb-00000002heJ-1HXX;
	Fri, 16 Oct 2026 10:46:49 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfSV-00000002haq-14bx
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 10:46:45 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-48b001cd92bso851257f8f.2
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 03:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792147601; x=1792752401; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=GfgvK0qoJ/yilK5+D1Thedz4qLh3Dst8vs6/FyRnv2g=;
        b=XjoAv+JJZfn2Cer9ijEHnJnfVsYxTtLgvNQJU501qo3MCrooYhLMpBTcDvyGc+qk9b
         /l4IZ9ujVVR6MaQd6EjUrVJ5a/XyjeX421pJOcG7QWLlkruHfm1JZDAt065wb/AvosiV
         tLHQkxGVx46bsxlthDp6QV+7C7AfZXMe9LCllItlVu9P1WjHwl197cAAX9wU096eK0wE
         ID7/xOHNvO2r8nMP8BuqIefdeFb8sBUBF0/ugtf6F5V7QRLIUvbaWi16I+YLBr7yLM4O
         Yy/mc3rn8q3+2/HkmfKDdBNhZtMZ+6PZwQj91g4znc+ZMkJJB2V/Vo8/7FiXcXcrkk5g
         ph/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792147601; x=1792752401;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GfgvK0qoJ/yilK5+D1Thedz4qLh3Dst8vs6/FyRnv2g=;
        b=SHV80cLbJpfZxlKOh2ddKvM2ONbjqeT1KRVjIREKyYtUURwklJXvkawjo0+Xt8WvA5
         3yqfkEUp3e8NbRA+0ztud5owN5/nXdb05k8qWeyYP87EDQPY0DsAWHlG3AK+bz2PobQf
         7BrBU4bCLSzIsDmE6vXJvykKMvO+S3h3i69oSBBMeL0od8ZEPJolNDVo6IdH2nRTW4zA
         gjOdXOTfL93M6GCqUF8hpuaIdVEUtQDm70PHyjsce6s3v8Eb/pF28TD3IEfCQ8RAZBef
         63dYSaLH0Ez05VOZtDS+Be5oQHkHFk9XB9UsfzcxXTd2G3qn4i3WIUv21o85l3AmS0rM
         WXcQ==
X-Forwarded-Encrypted: i=1; AKwUvBxf7l5iUkrI1HMYWT/KH9d17PRwI1IYOO4jo+okeAuMf8cY7FUlJSJ6S0VpTD9BZ3oJSSFf6Niruc0DUJ+x4Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYI940taTgCCmG4995NNY6ImBI8gT1j32lYR06DHbhIXrlTwspfq
	gW1uqsPQ1Il+4oasqx2bTs3NsxM2iFoyhz8UcVWiSehpHQSjjs+wfIMtCV//gXGdzVQ=
X-Gm-Gg: AYBFou3Blb2pHbBMDj04lZ0q78e73Vqzhd3rHrjpGGGdKj2Zl/hCFtfmiOXCGtIMIeV
	aotOV+5NVs1vzJ4qBownzn2hV+Miu3I8o+LDWW9XuFCSXB+6N6A5IxH++/qzXeLT2wIaiNWnZGR
	9Sw0LOtPC4DvuaG5qUrQs8RlpqEg+m0DXXaLDaqdFfYJ8O86Glbzbt4NkVnamkqpQc3NpUR/VCn
	nwHb5w6/BJQ/tjz42YRgRRJNQiq9uMEG8uGr3WcTKHxB/sMlHNdYVoGsUX5jsfqRWuQxGK23DB/
	Sg8VE/KLA545xNG/vJMaAqfEFR8yOMUyKXfOj4/9Uwz7mb/5M/IbzjXphlYhPp7NLwbunQuhUID
	KnBHw+22hLdpsYUsY2uTY64qqFzU0GJHypC51tLLSUD5iZDaEuFqtotRbD9L1uZ2JbNlNRjXi6l
	jO/L6hvGoXTdMTZek01M7JrJIKvg2WFuiUCeBuKKWOTjhdmpeiNabZ43e/TRYIqwElCVLGCCzJw
	qZgYPX0bL1Is8dDtm51eQ==
X-Received: by 2002:a05:6000:46da:b0:48b:68:594a with SMTP id ffacd0b85a97d-48dbaadc11amr31443485f8f.12.1792147601426;
        Fri, 16 Oct 2026 03:46:41 -0700 (PDT)
Received: from [192.168.0.167] ([109.78.92.136])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd5035bbsm4285475f8f.44.2026.10.16.03.46.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 03:46:40 -0700 (PDT)
Message-ID: <f9b60989-e58b-4ac1-81ca-f0d37d4143b4@linaro.org>
Date: Fri, 16 Oct 2026 11:46:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/8] phy: rockchip-samsung-dcphy: Move block-level
 setup to runtime resume
To: Jason Yang <jason98166@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-3-e63b49eabe2d@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261016-dcphy-rx-v1-v5-3-e63b49eabe2d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_034643_343609_6424E772 
X-CRM114-Status: UNSURE (   7.54  )
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

On 16/10/2026 09:56, Jason Yang wrote:
> Program them from runtime resume instead, where whichever of the two
> comes up first brings the block up and a second one no longer resets it.
> This puts the BIAS writes ahead of the per-PHY reset assert, where the
> TRM's worked example has them after [1]. That is safe: neither M_RESETN
> nor S_RESETN covers the BIAS registers, and the values written are those
> registers' reset defaults.

Would you not be better off scheduling a work job when you know both 
blocks are out of suspend ?

That way you always have a known sequence out of reset ?

---
bod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
