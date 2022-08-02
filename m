Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09A8AC00140
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Aug 2022 10:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jxvs8BTn/3eVKu0upAoBnWgH4Zj3jpDU/NA0hS1gsSg=; b=1mr7adCdygIJ1g
	QkvYbVN7yF4pPnEmYczi2bm+qJKME3afuinx/LJSR62qZh14rdEwpFEoD0ERCmHiwP396Hg+Hk2ba
	CvGUbu/uREUUXuuvPsyktfgvTY1cdtyuO5qW/jKV4oqoch9ourfcWLyQZpC9/egjvWMvgy4Jb7pzU
	HWBcykyq6PQe6+VuIsLT70YD9dH7fbBpgV8smyk+ieCiTI/1oNFGrBF/A0ISJ1kumArdcYGVp3P7y
	YwG6oUKIjsPq9LE6G/ehsADrOXaHCzUW3dQr/jLkzCpQEszyGn/13kFHUHoNmOdwc8s+8Oh4N8e4d
	2/mZe8/gmSI5o7fg/dFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIpIB-00Cy5u-4q; Tue, 02 Aug 2022 10:38:27 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIpHx-00Cxw6-L0
	for linux-rockchip@lists.infradead.org; Tue, 02 Aug 2022 10:38:16 +0000
Received: by mail-lj1-x236.google.com with SMTP id r14so15189417ljp.2
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Aug 2022 03:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GrIjh3GlcFwuItne32waJbd9J1zlfDiAzXhQEGRXDrY=;
        b=t6X0fGr0WgyiUFeT+Ch/Oii7o+V/fVb1rxgum5SUjglZfPXkTRf7W4wOnWhPNoxmfz
         2VIcBDaUA42e1aoi6KTNlFmNCOThZzPMswmbTeI745T3lHJ/GNKFjY4OPOS8YwdNpu77
         mAKSLsNHoPA8kZTyJhIfJ7Z5a1CdrkCozJIAY7+30Ji0VM1wOar4uDEJEdlqh0bYRmXI
         Y4oxn9ojfBLusOIeOrskFFiWqJWOMqMrXAhwLGyoZFpPrvSRp3oMiiotCRn8uKFyL+LW
         i8rnh5Vn3Mxiy7kCt2miEq23Llsscoe7XPW9Uod2Df0mckMAoB0yiUMvfECv3W2D03uu
         VZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GrIjh3GlcFwuItne32waJbd9J1zlfDiAzXhQEGRXDrY=;
        b=0kxfAbc+SB/UkdrkzcyY2xef6lyI+/mCjJeLK2CHrwh+QEMVfoGf6OMn7OlQOyBSla
         exfnlJ/Zis31dhZ40+E0ioO/NbM8nlk+OBzAH4qe4NOCGYq7bjhO2msGhMnQGuC0+7fr
         UQQQ8P9c1kHJQWbcvwTSuOeeecp3WfuDyv60018QYc+RsTHjYue7od1hUCWXOMTlPFfO
         1VmrrbjA5f0IRJH0jHFWWbatu7mvISBHSvOGG7tkW1hQA+AcvOVGIzTMQtPTceEw8gyF
         C6vEb+t7d/VmiU1tKdHRkgZ6+yvfM6ET7RE61j8dO7agsr91ir5w/BlQHSbJg3OiaAVO
         LmfQ==
X-Gm-Message-State: ACgBeo3fwjOJpXLXyVm15MMe0shFAgYS3U3CoLdD0ARF8DtErPY7ROn0
	SrqoVjODOCebbVfOcsoCkbPoxxcMRt/Fi8cC
X-Google-Smtp-Source: AA6agR5wPg0NxYYzaGcWWg1zRYH0xtKJ9HqiX12XQ9f4cedMfO/EbzgnbNeWejPdykRbIRwGE2jXZA==
X-Received: by 2002:a2e:9813:0:b0:25e:4aa1:e51d with SMTP id a19-20020a2e9813000000b0025e4aa1e51dmr3887614ljj.298.1659436689258;
        Tue, 02 Aug 2022 03:38:09 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id a3-20020a19e303000000b0048a68fe3745sm2056986lfh.34.2022.08.02.03.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 03:38:08 -0700 (PDT)
Message-ID: <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
Date: Tue, 2 Aug 2022 12:38:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
References: <20220731174726.72631-1-jagan@edgeble.ai>
 <20220731174726.72631-3-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220731174726.72631-3-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220802_033813_733318_367A509C 
X-CRM114-Status: GOOD (  14.66  )
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

On 31/07/2022 19:47, Jagan Teki wrote:
> Add power-domain header for RV1126 SoC from description in TRM.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v2:
> - add blank line
> 
>  include/dt-bindings/power/rv1126-power.h | 35 ++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 include/dt-bindings/power/rv1126-power.h
> 
> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h

Vendor in filename is needed.

> new file mode 100644
> index 000000000000..38a68e000d38
> --- /dev/null
> +++ b/include/dt-bindings/power/rv1126-power.h
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

Dual license, please, unless some copyrights are no allowing this.



Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
