Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5865D78306
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 10:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hOuzPCzDuqAoSm06yHkSzgMSKf/32avsm9+g6Zn+7w=; b=ik6pNAIy6XVCUl
	otj8tR8tmZ7CeK+7K3qpF08prYqSfz9JeK29FBUJF40dsHRIlQzu7mfabDTg3HvyCkUmomfMs6F+t
	5CpeaEJFiy4deAAVP2oPDKE6LUA1vXO9Rs8hBNufX9VdyFLVKeXQ07QrY5y9RgH2ssUr/IUCUjJnH
	U3+jU8XlJgsqGVwXPuE3NkBpssru3foNlPerUxa3o8HpS6ceHND1taJWXOo5Pvuw8PgUOD4jp5fjS
	us/uHyFeZASp/NQB7XaajmS94JoTncOwaG8vV41t/gEYepGGqNMtHS+bmr1t2kVInZX9quoNSjyVY
	nmxRAEQ3WfY1kJVc8iMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI3rY-00000005ktn-1I7O;
	Mon, 02 Dec 2024 10:41:08 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI3qY-00000005klL-420D
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Dec 2024 10:40:08 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2ffa12ad18cso43068351fa.2
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Dec 2024 02:40:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733136004; x=1733740804; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jP25TYUqJwcL/fuEV7RObAqteQ/sd95uJofPv025g0s=;
        b=sYfidnwPLl1Ou0ren6R2XQYKecD9l8fEbYe4NbZBz8eFfpcOSXj5aKNdjZG6wjRXa1
         UiAo6O/k1/qndKYXsQqV3wsgTPavCXbgwJiMey3cNIL9m1IvsEfyNfuRVB2oW6+AxHtt
         gAvZhor6QTXiLA9TPkVDfmtEoEs+jPplGtgOKhdOYHOd2w96hMpvWhJss5sRJ+WQ2wQ0
         D3pQR4umBwS0XLuHJkFQabmf88M5TNhj6fhVUt0QQaLRqGh28lL90w2Kkp99pjtKbPXW
         +eSD6DLgGM9kis+r2XIJvHI2O9JxWqEmBW4/u4ngmd0PEbxIs0bfkkuxb5ntMG/L6fUV
         paQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733136004; x=1733740804;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jP25TYUqJwcL/fuEV7RObAqteQ/sd95uJofPv025g0s=;
        b=j+pgZlIODT/sR1JHWZouKwod3NVDgag7irPhA1IBIv5+Yx9gRdkWhBmAhixA++qRjs
         BbTfPr5PNV3Dmcvsh4fRKi3b07vKt18V4Oc8h5naimbODVNaVIlb96Px8kZjsq99I8yO
         +TbI3Kj1GjJzh725wpubLu44PB/g9qUWUzRCBGJTZFimqUl1mIrgoSd7+N9DtK7eev/I
         Fj1YoLZsT6VWLFHJL2aMdRvAl3BFg0vVGAEVV49zeRmZyej7g0VMmFKKrzs1/QW/5Pld
         3y2IdlkEqKtI2xprAiL9iHLiZxUc2XhN2f6XSQ1sUDeYdo+io9nDFNmiCHDcirZUM6ru
         1hgg==
X-Forwarded-Encrypted: i=1; AJvYcCXpo44/8X18fDSxgdZj/sXS8OUq8SeRtd05RUKbD/c6gCr5eH5mc786onEyhGl/AW5MuhP9X4ePYtb4yE1leg==@lists.infradead.org
X-Gm-Message-State: AOJu0YztrlMKRK8pP8Nq7/GpzTS+41LqZfEwWpIz5rEl3nKNF+3940Hp
	HZDYwNv6jSaTVa7BHNOIz2I3wYM2S9TvkiQZUErtiLU04qnJCl3j721ND8ZAuMs=
X-Gm-Gg: ASbGncspKx77GKMYAceDHShltoxIpgd53fP2O81OHFCsUTrIgvMphqOI5y081l0fj7Q
	fG1B4xPTuPhHTG86P+l1WnJFe0w1olXeSejyPr7S43aiambXGR8MvQ0McYmdhLbae0BClUigoLp
	8zqkvGMZJ0Dnd3IDqCROx93UDxqPqiBKw0Ak7++zXppYEIFu0lexUNV5Y/3EhAHR7pX9y6i7kWc
	j0tpGETVD88HMx6Oq04e6pw5ocanZOxCp8K9HqDzYwWfJXbmKbExX5NQAoQoyqBwDRVmX66zs6v
	csl4RkXCEpV5O2MDIy+ROECsoWby
X-Google-Smtp-Source: AGHT+IG8o/j6bnKJ+zKrlKTnEYo13Y0X3dZZFejDWDKGBLT2LAuwWFwKmgOXvNqPPtyC3J1B7R4CZg==
X-Received: by 2002:a2e:a54b:0:b0:2fb:8777:7359 with SMTP id 38308e7fff4ca-2ffd611bf55mr110031081fa.39.1733136004456;
        Mon, 02 Dec 2024 02:40:04 -0800 (PST)
Received: from [192.168.210.26] (83.11.10.28.ipv4.supernova.orange.pl. [83.11.10.28])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfbef7a3sm12397121fa.45.2024.12.02.02.40.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 02:40:04 -0800 (PST)
Message-ID: <b50376c7-c5d5-41ae-95ea-e2d68c1cc809@linaro.org>
Date: Mon, 2 Dec 2024 11:40:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: enable rng on all rk356x
To: Dragan Simic <dsimic@manjaro.org>, Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <a> <20241201234613.52322-1-pbrobinson@gmail.com>
 <302bdae2f4defeefe88ea4018a0be11f@manjaro.org>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <302bdae2f4defeefe88ea4018a0be11f@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_024006_994210_4FFF4612 
X-CRM114-Status: GOOD (  11.14  )
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

W dniu 2.12.2024 o 04:55, Dragan Simic pisze:
 > On 2024-12-02 00:46, Peter Robinson wrote:
 >> The rk356x rng is available on both the rk3566 and rk3568
 >> parts, the IP is all self contained within the SoCs so
 >> it's enabled already by default on rk3568 so let's enable
 >> it in the base rk356x.dtsi so it's enabled consistently
 >> everywhere.
 >
 > Please, go through the mailing list threads [1][2] that have led us
 > to the current state.  To sum it up, it isn't about what's supported
 > in the two RK356x SoC variants, but about the RK3566's HWRNG being
 > disabled because the testing showed that it produces unacceptably
 > low quality of random data, for some yet unknown reason.

So maybe there should be a comment in rockchip/rk3568.dtsi so we would 
not get back to it again.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
