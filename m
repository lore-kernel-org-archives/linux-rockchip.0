Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D98606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 12:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RPqP6omX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=WtTrFE6/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bPxUfZ8bbjvwygz/mkzdSn1dNOf6TqQ80v0T4TzLBKw=; b=RPqP6omXMPAO1PEIFwWKc4lVYr
	b3RvxKm26IZwbMfnfAbqUo42I1HBnYoObnPl2Kq3TdMZh5d6wFB1eUAPRCCPpvGL9hLQNvfeYovKs
	PXnkoBsLaA4AXiJX76micw5S3sgmnOpF0NArsyXDrZcHZrmyK0v+h6LP1EhGYwywhNARzJaZO7E2Y
	GOruTTtmkvewV4L2TdPnBfmMUt17Egdb4BLELFx/rvVl6XqFj2Hq4mB0lFvx33mO5hq9j5yYAg7su
	jrsyzJPOItCODRP7UPEJYTu8obDpCRMrKT0+TmvHY3QQWETcmNK7eGedku6u0FlIXWGXaPZR6dW/2
	bFRngT1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTemE-00000008qk7-0CnC;
	Wed, 18 Nov 2026 12:28:38 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTem8-00000008qfk-2F5r
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 12:28:33 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-491971ac844so871165f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 04:28:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795004911; x=1795609711; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fApH6YF8/olwr8rszx1618Se8LLbeSsWPgcCTgBcSzQ=;
        b=WtTrFE6/y7fUzlCgS7AJi7RdX7Ec0ReUb19oZKlslN+cndOmnKN5h4q5i4CoJTBVxn
         wiJg1OKxqSMhKsVDEHrmpAE1jzqPCitApR0fBc+0gCXE00m2j7k7YReYTr/TxW2uo7aw
         SJrs6hHLNO3PIg0ygFM2hyoUzRuip7bC0k7lrEDpOIFcP4GBe1anB0UOd7E8/YmOCmz3
         8Ac4K+/iFJG9RJj5/HicI0ga/29phGLb+bG11XeiN9aTFLke2Jl1BfiXu6iZxhbzrhGg
         dg7S0r9gvd3pZnJck6bmPBEbky8rJk0uKqhNFMDTh+epxziPowzodQ6QiSXkjb98dcOs
         YEMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795004911; x=1795609711;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fApH6YF8/olwr8rszx1618Se8LLbeSsWPgcCTgBcSzQ=;
        b=Gz1SR7WSoHQHRfvexyhzgDmFUFB1WFW9/oRlq4XDgtaG4BAjr1GPN3JXACY1xzHlHm
         EirRtlaW4XLZig8Oku6H35Sh1p7kXSvW01PuChoby/BcmL0ihHMrG0QhjGktyt0doQoZ
         Az49e2qyrprJr3EVbdxpskhrzpCxmZuxz+uGxxor30kV5hGYWr+j4b2APC9spL56bT39
         jfX8FQI2dcdUtnaQOYTn8RRV1v9G0vIzYQu3PvzW7S+dfOEd92ylvtdqyCx6nWEcLwZb
         DTj2wygwuAl1/c+la320ZUML/Ujp9o7EAbKhN0FjGMNq0IPWST8eSJqH7kaqfhEEv8on
         HtAQ==
X-Forwarded-Encrypted: i=1; AL+hErFFre24VPHJMrlhtZ/mUfS7ZAZCtKi5XL3OSSLBLeeOm13VwhIeCvcbBmFb7Uyl07LMSaFf5wfUps/gdihJsg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+vXQi0/4Un4+TiXjj2EeontydX6nnKC0cEwvDUbZP611fcSrp/
	+n/kdIB/4fZnMvvioHvoQ57q+itz1PWyXfbTcyIhmTtpRSCGMBOmnfOmO9yF2tVnqlk=
X-Gm-Gg: AZFdTZe4t6WnuABDp0B6e5j0MaRYRu2o8GEe76r/51HOFfC/tcfHLetan6Gf125TfPW
	qHTFGa5DUXyKDf90DzrQI3xdQE2mA1xBgWbKkAtWKLiYj4vFb0HSdXbv4h960HEXCsfY+duJdSm
	yyF3J5GzHwW1o/c51G7FwsZgkUpLjwU0mabEZvDteTt4MzFROR7r7/ksqwUeb4wUIHJvFkKlxal
	7YrBlo0+qrPz2B107yToGd/mAcDXxC9fXfOckI3PlCW32zxUXFi3p/682Wsi28R58qvm3knA03Z
	m7huVweF5XdGbp/402uAjlHzfu0dnSLwzdnpYEJ4rtppjX90fe/d7gJ+UKLEeFFLtjNdy4wQsL/
	gGKUjRKWobRFqKxX3GZVfF65MKXS48eXd24GWsXr1ALG9f3uRQVTsSgN1t9rUrFGxi/dsyBZcCw
	J9ssyvU1ijnXJ5rboNhaVvuXzD3rLAxVBbMbeyed1thiRG33Nuikja2V5SvsUoLAqz0vPROBtNG
	J9h7utwZMaVS7k+vX26u/7L0cq+8X0Cw0BRXsCT45OVAu/FVjKQjL/3Xz059V52tgurbd8aZI+x
	Y5rqndjqLNkK7ACkRKoJz+czSlbharxZ3JYbd6XVTcBtJP9Zzl2LErVBmMjnv+Hqq45K47DGOS/
	PIw==
X-Received: by 2002:a05:6000:2f86:b0:4a6:63cf:99a6 with SMTP id ffacd0b85a97d-4a663cf9ae8mr4421294f8f.23.1795004910709;
        Wed, 18 Nov 2026 04:28:30 -0800 (PST)
Received: from ?IPV6:2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183? ([2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a654a8c406sm4567452f8f.14.2026.11.18.04.28.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2026 04:28:30 -0800 (PST)
Message-ID: <15dbc800-ab4a-4b98-8f6a-95d2ae80819b@baylibre.com>
Date: Wed, 18 Nov 2026 12:28:28 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Daniel Drake <ddrake@baylibre.com>
Subject: Re: [PATCH v17 12/12] arm64: dts: rockchip: enable the NPU on
 rk3576-rock-4d
To: Jiaxing Hu <gahing@gahingwoo.com>, tomeu@tomeuvizoso.net,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com
Cc: royalnet026@gmail.com, ulf.hansson@oss.qualcomm.com,
 abel.vesa@oss.qualcomm.com, sebastian.reichel@collabora.com,
 sidong.yang@furiosa.ai, u.kleine-koenig@baylibre.com,
 chaoyi.chen@rock-chips.com, shawn.lin@rock-chips.com,
 finley.xiao@rock-chips.com, diederik@cknow-tech.com, alchark@flipper.net,
 leonard@lausen.nl, vlwwwwww@gmail.com, jeff.hugo@oss.qualcomm.com,
 rfoss@kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1794615324.git.gahing@gahingwoo.com>
 <c0d64d55586774802bdd70defa016be6912ab83e.1794615323.git.gahing@gahingwoo.com>
Content-Language: en-US
In-Reply-To: <c0d64d55586774802bdd70defa016be6912ab83e.1794615323.git.gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_042832_634758_E05ED3C0 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On 14/11/2026 03:05, Jiaxing Hu wrote:
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> index f068794e48d4..72b251d396fe 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> @@ -779,6 +783,24 @@ wifi_en_h: wifi-en-h {
>  	};
>  };
>  
> +&rknn_core_0 {
> +	npu-supply = <&vdd_npu_s0>;
> +	status = "okay";
> +};

I can't figure out which code actually acts on this npu-supply
regulator, even after considering the patches in the "pmdomain:
rockchip: RK3576 NPU domain supply and settle delay" series. What am I
missing?



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
