Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E276FC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 21:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgujYPeeQ9BjIDXpQdb0jLOz1iTlsGb5v21+9aVFu7M=; b=eR+XWsgBYdZuOS
	MPdx3ZsJ19vR/gFB39LqKrixwKBLhDf7SjfsD+EVlgOJHroADJYd/DVvFxK4Fxqnyqzny46Ci8tAV
	vg9gttZaf7T0Eh/y4S7AMARH+jRyxtyWkRm0gpYdSkXUgDJE4f0f/wpoDpuG8v//Biu6+VixN2HWi
	Qwt15yZvfoQcC/cZHNYpZ6VOIy5J3fG98w+uM0KAlhg4EnTwunRx0a9nQWFZ5x9/j2gWpTs8Fk5vJ
	aRBGgrnVZESADc0SJOWpe/ly0ODLjGyALX0qxct0aU+nxxDKT1J+A5rmigHe5bZlhFImGy6Wescrw
	TCFQ14v5lNiIppmUArCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMbd-007TJc-SQ; Sat, 23 Jul 2022 21:24:13 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMCU-007FxL-Sl
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:58:16 +0000
Received: by mail-lj1-x22e.google.com with SMTP id m9so9007231ljp.9
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4tjnViAfdAE3PZkZlAtnEiY3dNQfVBhqVbN9YH3dYIk=;
        b=BWl3FxErX9EK/BnvgoCHGHxePmjLs9o/Ye8aQYM0aaRQe7CIwKN3rwtcjQG/+Zisgm
         2z9INlTIpd/0tJJNVEFZbJvXZPkVHN6tJieLr8fJEUQNkuaFf6rq1Zr+4JgLe/am97n8
         EH1U1uZY2uusUQ2DkQBEGkQnaoh5f5lu8La3LkXNbUQhrdT4u1lB6HxUfQGS86XSEEvH
         vEPJkud6BQnP7KK6xCs3de/UGog2QKei8zMz0fKZGqkCdpRqZwaoSW0avgl7g+hMKZLV
         N6oSqnGazR+fhzHHIZjMasNGvHADaXchaKyZz4AWcI8DXyz+Ucn1TpRWGfhG2va8cRFn
         kv/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4tjnViAfdAE3PZkZlAtnEiY3dNQfVBhqVbN9YH3dYIk=;
        b=C+PMKEt8C3tXqtg/3cQQ456xsgwheaJqRmNV+bvyRXvl3ExWwuDj9Hi94QiYzW43Z6
         gHzvOuPMzqKR6AG6GfjNHUqTK6sjcYqKyO/JPMs2MX19Fsfs9F6ooABMvZO+g73MT/u9
         35p2XNFcNgV7TQtyOv5pv7OQlopTogdroOpnEBXfl+nKhUpx2uh0E1TbiSPt1CIie2hk
         45BMMbV9mjc6BZ2LpxeKPNZl2fTz4yfMTqdIuq9hgqT/+sMJrORePeV7PwvfJcUWWDMx
         evxVEgWM9sAkdRTRflE0mSO3hii1ztIljqj/0Tihf4FO73lcvcBjq+b1XJyaLdPhf+MG
         tSLQ==
X-Gm-Message-State: AJIora99WoJoP4Wnnk1+pg8MXc1ZpOBfAZcwmHDrrCvQJALiYPRKraR5
	1rmWwrUU1DymcSOtrriV5phRiqHubW6YGTSE
X-Google-Smtp-Source: AGRyM1vkcOPh6s2+9q0laFZ3A8f86bLfRcMLquXDZ/oLJtDd0s8i7fIhtqH+DHtl4Rqm9IPaZcb1zA==
X-Received: by 2002:a2e:980e:0:b0:25d:53f0:642c with SMTP id a14-20020a2e980e000000b0025d53f0642cmr1958260ljj.405.1658609892568;
        Sat, 23 Jul 2022 13:58:12 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id u13-20020ac251cd000000b004811a829de5sm1825310lfm.59.2022.07.23.13.58.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 13:58:12 -0700 (PDT)
Message-ID: <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org>
Date: Sat, 23 Jul 2022 22:58:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-3-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723204335.750095-3-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_135815_011056_0B350EFF 
X-CRM114-Status: GOOD (  13.25  )
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

On 23/07/2022 22:43, Jagan Teki wrote:
> Add power-domain header for RV1126 SoC from description in TRM.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 include/dt-bindings/power/rv1126-power.h
> 
> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> new file mode 100644
> index 000000000000..f15930ff06f7
> --- /dev/null
> +++ b/include/dt-bindings/power/rv1126-power.h
> @@ -0,0 +1,34 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

Dual license and a blank line,  please.

> +#ifndef __DT_BINDINGS_POWER_RV1126_POWER_H__
> +#define __DT_BINDINGS_POWER_RV1126_POWER_H__
> +


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
