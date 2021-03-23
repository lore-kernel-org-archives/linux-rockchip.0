Return-Path: <SRS0=giEr=IV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6355C433C1
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Mar 2021 22:34:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6269E619CA
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Mar 2021 22:34:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6269E619CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qO4cMHbufUfI6IE2oJ8jO/GOvkO1WUo1aogRlS9Umwk=; b=EXerF4QIMJZaVC9wuzx7JGttg
	B32pJHrHLUOSxvCOkws77vw+a/rqp5O44ttSM7FkzTZmFrLzuiNpbZEjnQrDPu0NYvl2MnwJJsLxF
	L2B0hWq/voGn7CWzmZeeK4FBDiKxMqUDcXQxOd7bnhDyguP/qImB2Nqx2zs5v1aqOnxNe/Ni074BL
	BrNN4o+OpsAeCl5Hk7+GRXXVqw4t4MR+cngIvUEzgm6MtB5RG0DSHdaZ/bkLifJ6hPUm7aSVWUABh
	xNgMfci9jo8XWnSQoEyeWyVb1b0EushrCWAidtJbLukdjLpJKmF/9/InVKgFeGcBfxUBUHDSwt0j2
	eF7l9sNww==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOpbC-00FtUj-2Z; Tue, 23 Mar 2021 22:34:06 +0000
Received: from mail-il1-f180.google.com ([209.85.166.180])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOpb5-00FtSl-OD; Tue, 23 Mar 2021 22:34:01 +0000
Received: by mail-il1-f180.google.com with SMTP id d10so12876729ils.5;
 Tue, 23 Mar 2021 15:33:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1WoClusEkOfDI9wl2HJjQIHrJPuS0gJSk2OCwRkvDpY=;
 b=mit7fVUvIDs9fbCzCBH0GvBCUrg6r0YW91ZIyODcewiuz5zT4VnAQwMX/3j6ADwQ1H
 1g9HTKe70QENmAPgLuVXyAULHRBrZlMfknedReYwkNKq8ekI1FyYyCgMOjKLa3QIKph3
 edIKXe2JNSejT++sm5j56YG1I0ih0RNhFs13/4Eacv744J9rpgpFbe84hbJq0/nGH99o
 m0lrGj5E5VjbwCVgy5ffWmwh3TCtF5PhsAIw3ZHlAAbOKFFQnwq+aKhcSh7DW8hsRUal
 5PIFJFMZoeY8w4SFVb0YGYLtywqGPn5Nf9TcjEIX6GaiJ38TyD+oZZ/qEqsgiYOuw0H9
 ACRw==
X-Gm-Message-State: AOAM530GFjX4VKzFzxbhieKImXnphjxkeFju2iUfk0/NqgtrL//nGIgV
 6edzImZgW/W+pznvmJx8dw==
X-Google-Smtp-Source: ABdhPJzfOBNB+j3wZfc4QmDzvSzG/k6H7Hd6eitCOGrxlYx5RIAJt5rxTKsg+9ttUF711gq1ZDa7dQ==
X-Received: by 2002:a92:d7c7:: with SMTP id g7mr309586ilq.305.1616538838716;
 Tue, 23 Mar 2021 15:33:58 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id o10sm120122ilq.22.2021.03.23.15.33.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 15:33:58 -0700 (PDT)
Received: (nullmailer pid 1468543 invoked by uid 1000);
 Tue, 23 Mar 2021 22:33:55 -0000
Date: Tue, 23 Mar 2021 16:33:55 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: hverkuil-cisco@xs4all.nl, devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, wens@csie.org,
 shawnguo@kernel.org, paul.kocialkowski@bootlin.com, festevam@gmail.com,
 lee.jones@linaro.org, kernel@collabora.com, linux-kernel@vger.kernel.org,
 mchehab@kernel.org, gregkh@linuxfoundation.org, jernej.skrabec@siol.net,
 p.zabel@pengutronix.de, ezequiel@collabora.com, mripard@kernel.org,
 s.hauer@pengutronix.de, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-imx@nxp.com, emil.l.velikov@gmail.com
Subject: Re: [PATCH v6 01/13] dt-bindings: mfd: Add 'nxp, imx8mq-vpu-ctrl' to
 syscon list
Message-ID: <20210323223355.GA1468513@robh.at.kernel.org>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318082046.51546-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_223400_134687_1BE96A13 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, 18 Mar 2021 09:20:34 +0100, Benjamin Gaignard wrote:
> Add 'nxp,imx8mq-vpu-ctrl' in the list of possible syscon.
> It will used to access to the VPU control registers.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
