Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E053C46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jan 2024 11:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxzfPPU/Z1PpUbjf8eVe/HVC6CY6n4Dh9aasz3H9Cjg=; b=Ifccx3aZJIpe59
	KVG82aaBLDSx6qYWO5KgUoUJk5Qqo+k4ouMSvthlFVa1X0CLKlI/xDIFf7jMAZ8yFPxGiQtcJLRrl
	oZcxXo8/ogoWOn5cP0DHztg2vbqmmEPxAj3NQi61N7JzAVQkfWpJEDiBEOfOvafY/Anqku8PXHvzx
	/ByPmAdBZjqpckYaaPXM8VEjfSKEHJDaucpuSh5PkiYuWF4YAQeAwu5/Z5GbKfabrveVFXzWbyxK1
	0QeghrSDEeHO051UMwMSrh/uXttoIQO0iAUecI2UqaXY2GgFm5VYIKrDTsOpJA+36k/ulPT78vE4l
	gEQzMtnrQsAr4ZC5aeJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcWj-007fAT-0I;
	Tue, 02 Jan 2024 11:01:41 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcWe-007f73-17
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jan 2024 11:01:37 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6d9bd63ec7fso1899752b3a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jan 2024 03:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1704193293; x=1704798093; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Cl3+Gz73Blj8bbHen/MsuMvAvYRueD40O/9CXlEA1Ac=;
        b=bSkjj2ZQ7+YFBSLsklv6Mq+juZpFYXxlAUPTsQhabXg2b/It/ZpA6VYNOuORjF7V/k
         +n1WFc5KAWQJEZFKTiNXEVCIw7tx0K1ZTLsFchEnrpUVDnfysOKhjSH01kNqT1/cQkhW
         6XS9jr+38kNkLGbmPruB5GWG4GDS3YoJvh8wBFIEoRaM/xy3mbc8SvgAnPTo1UM6yXTy
         bL5pb+xqKcwA1dy4H4yQhKX64g+iNOG81A+R2xHQfePpLNiUYw5vhNWVaoSEiRX45lZE
         4rU+wL5fse6Xo8v3/NeyAL2jJGMbFiJXgCv5r1loTIYI74f96Os6GcRupHU5dd+yFBmD
         tZtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704193293; x=1704798093;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cl3+Gz73Blj8bbHen/MsuMvAvYRueD40O/9CXlEA1Ac=;
        b=tme7E41U7D62qhSj8B2oomh12ogCr8eWyYm3mPCe8Ej05HXeb4ldyx7Ix7jUNW/4Li
         oiFeOAaFyg3QVAPF0UGLNOB9MJxbdHjM5hfhzsYIwN6O++zqQjxrigcECLHkQsDbBqZU
         h6hgXbxikWnj/D4YBBs3phu/7nGq85j1re5wTaioutWfzPX0cniiE8LzxyhBcRQWdwsC
         YJqp1IQkmsOHFhqQXRKr6AJaTqE6paSiDD5XihrbzwEIvKvk8vL3DLzkO4VvGNfmPEpz
         7yM5XxAM8B34Z7+PmtPAYT2CFrXm3yQV8sTLe7prhHchd8JeU64PLkNs+I+iiGvcFxJQ
         BMUA==
X-Gm-Message-State: AOJu0YwRFG0ysOom8JbbZ44SccmdMosP2udAJQHgIOlF5PiO1JMgVmA/
	yNPJUm7UXKbXZMpP0ie1ijSI20vviQjCNqRUCgMxspT09Lcd3g==
X-Google-Smtp-Source: AGHT+IF2EGlw5GxLPP0MtA41B9f42K0EkBosD189HmVIxczVkPrEaRXnF58QaQps8h0wuPDaT95GdcqYAeKGjGLEysk=
X-Received: by 2002:aa7:90d8:0:b0:6d5:a679:e8f4 with SMTP id
 k24-20020aa790d8000000b006d5a679e8f4mr7350622pfk.57.1704193293222; Tue, 02
 Jan 2024 03:01:33 -0800 (PST)
MIME-Version: 1.0
References: <20231125190522.87607-1-jagan@edgeble.ai>
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 2 Jan 2024 16:31:21 +0530
Message-ID: <CA+VMnFx4j1=CGou4yya_7RbFgPwQ_KqOLoTWbYLthPw2VwR3iQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] arm64: dts: rockchip: Pack Edgeble NCM6A, 6B DT
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_030136_505223_7B8A4D9C 
X-CRM114-Status: GOOD (  11.43  )
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

Hi Heiko,

On Sun, 26 Nov 2023 at 00:35, Jagan Teki <jagan@edgeble.ai> wrote:
>
> DT patch set for Edgeble NCM6A, NCM6B SoM, and IO board.
>
> Changes for v2:
> - suffix -regulator in node names
> - fix node lables
> - update commit message
>
> Any inputs?
> Jagan.
>
> Jagan Teki (10):
>   arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
>   arm64: dts: rockchip: Add edgeble-neu6a-common DT
>   arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
>   arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
>   arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
>   arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
>   arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
>   arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 B-Key, E-Key
>   arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
>   arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a

Any update on this patch-set?

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
