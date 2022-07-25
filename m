Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED468C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jul 2022 23:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hd8DPzkTtP2oXuFYLca324pmktHAHx/OQgDaWjKaY0Y=; b=jY8TNAT2NB+ElE
	W7N38wyrjkA786mTJwMMLyqVPbmughmkdb7xHdGQ0D93070Yv/ah3pSF8p2vP+mj7ly3eG2zVXZKy
	isaXrBM9+2v2lciSu2vnOW809reWV3d9nfM2txsZnKz+YxIpjxE1K7jm65Za1ItJZi7gJuzUEAseX
	bEepmjIYhDjPURYnCcMOTCNyItQfDuDWk6R4zv31zlo1x+5nSNjweoxf/qZbRX9B743ROQpfqgcJ5
	SVB1lgK8aSy2gb7DkbqARLM26LmidF0pfiNR/e/jnJYxUiM08PFEzHkUrPD5TvVTMQjKrz8bxpz7Q
	qoKco1I8SFn7WpeNCOKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7T1-004ECZ-02; Mon, 25 Jul 2022 23:26:27 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7Sn-004E4c-50; Mon, 25 Jul 2022 23:26:14 +0000
Received: by mail-ot1-f51.google.com with SMTP id z12-20020a056830128c00b0061c8168d3faso9795481otp.7;
        Mon, 25 Jul 2022 16:26:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xnFhTvVlYrrcoWqTeF1r68lRRBQLPoPsbaCYWGup+Vo=;
        b=6H9y6Wq7YWl458X3g0+Wz4ZBdfbRd1bcBBqrDbsp4l7TpMofygLaUQpvMeYiYryOD8
         fK9IsEPIIZAtWgaxP7UTyMyjH6WmpJVjfN9gPjie/fstOZfbh2u55WPfYtZNIGxNQCu9
         CLeWe90h0zNJ3wHeM6f8nZfJwlmMIr0alwU9jjPz8QAsQiLbRhpvaHh7DobhfAYi6UkO
         6n1mYFQmtRFXNC7mC6R6a5hsOL191TIrga+7AJqsKYUts/Xk4ssX0XbvurQKzoWWZ0YC
         vFy/Rs+eyvRuVmeGe9tKhCLqCfoZd6kDYXTfWRatgnHF/JQCMNEqbuMhPDaKvCkMJGNv
         Qs+A==
X-Gm-Message-State: AJIora/t1zbQWU5aTV0EvdMPP19HXAh5fy+Saf/ox0p2QOHhAogOs6gt
	4KqUGm5GID+GjUNzFJd35Yz1M0T9Sg==
X-Google-Smtp-Source: AGRyM1tSrCX6+vSPu5meOoqpG8k5p7fMqZhx876vaGZXdOsAHkQhAM0U3pW+khOSX46P3sFlouD54w==
X-Received: by 2002:a9d:6f01:0:b0:61c:b224:e7c9 with SMTP id n1-20020a9d6f01000000b0061cb224e7c9mr5740297otq.245.1658791571112;
        Mon, 25 Jul 2022 16:26:11 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id s41-20020a4a96ac000000b00435a59fba01sm5383225ooi.47.2022.07.25.16.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:26:10 -0700 (PDT)
Received: (nullmailer pid 2952292 invoked by uid 1000);
	Mon, 25 Jul 2022 23:26:08 -0000
Date: Mon, 25 Jul 2022 17:26:08 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>, linux-serial@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 12/22] dt-bindings: serial: snps-dw-apb-uart: Document
 Rockchip RV1126
Message-ID: <20220725232608.GA2952235-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-13-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-13-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_162613_216943_A7B4B5DA 
X-CRM114-Status: GOOD (  10.86  )
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

On Sun, 24 Jul 2022 02:13:25 +0530, Jagan Teki wrote:
> Document compatible string for Rockchip RV1126 SoC.
> 
> Cc: linux-serial@vger.kernel.org
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
