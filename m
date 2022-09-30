Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 493BEC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 19:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMTXV3wz/hrChp4jrADrWWW2ew0tkQvHmTHlInEApFU=; b=PoYJK6O0+cVb/I
	Hy0FoK7qsqqKKdmoOGKqi+6YnCYdgDLe3WdVyWec+njnrRTZEIKz/yu5nZNz0cgtIQrypitHU7kYD
	980anpZJGID1tMUXZjSZHHPGO0ChF4RUyyFrya2xxcfHrjuaogYK/LM7qgWGOcLdwK0QRR4sqXioo
	6tYnhkahw/mIQ3kMaOIOaXYKo3DsoHNZM+kWbjUaCkHvWJ6pN0jWb8UMvpZ2rXuoHMP0v4OEoExWn
	wo4WoJYZAxASxs0MqKzINtRqLnvi/XQ0o4dxbq7tXdWcViD77F5PDAhOcy0q84UbEFgy5YsnS79Nm
	jlAg3E0jEvuW0FUtlK5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeM6b-00BHYO-LE; Fri, 30 Sep 2022 19:55:29 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeM6Z-00BHX7-Do; Fri, 30 Sep 2022 19:55:28 +0000
Received: by mail-oi1-f182.google.com with SMTP id l5so5782651oif.7;
        Fri, 30 Sep 2022 12:55:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=WXdH6x0NPtS3zZSDVe1DST+IDEojPhNlnEp+XZLbnsc=;
        b=Yi82RwbQZAEBwwOA7+T7A1/P08i5wBQSH6F1fYjdRMPV31vyCluwUUAVhgGJbUWdrs
         8d1L6o0mFPhQobSo79m0rk39KJQsOeuweUCxu0VWB6r3LJTYl2+FH4nNs14vDDKmWDvK
         8Ijd9bG/4fOGo9gwzh3SK/xvUL3jp0EKt/dFAc032KQwW+4PQUIdyARWAY12yORbwNPE
         h8pxOyiBj/goNo64gbMIYLMrO45atNXlmPB3wvDSUMVZXyRsmOn5A20EtrOgO2QcRqEJ
         XbbihnjvDI+5f4NVJ4AM2uDHDeqiEKmNmrDAAvWM4VxOMUayt6I9GGqZgdrdvW5+mP8m
         iNlA==
X-Gm-Message-State: ACrzQf2HLQzif+rH4J5l02pCLpK4sedygAVpJhaZbgf0lGu4uPkZSzeH
	+V6D1QQvrf8rt9xQvpA/OQ==
X-Google-Smtp-Source: AMsMyM7wPIzWL6a3LEKjW415lN5AtVUXqVOnW4wbyid1Wry6JTsly0Rj50yQaWEAFfqHW+7nD1+SFA==
X-Received: by 2002:a05:6808:130a:b0:350:72d3:ea3f with SMTP id y10-20020a056808130a00b0035072d3ea3fmr4380486oiv.191.1664567725480;
        Fri, 30 Sep 2022 12:55:25 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k28-20020a05680808dc00b00342df642fd3sm710126oij.48.2022.09.30.12.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 12:55:25 -0700 (PDT)
Received: (nullmailer pid 777338 invoked by uid 1000);
	Fri, 30 Sep 2022 19:55:24 -0000
Date: Fri, 30 Sep 2022 14:55:24 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-pwm@vger.kernel.org, thierry.reding@gmail.com, linux-rockchip@lists.infradead.org, u.kleine-koenig@pengutronix.de, krzysztof.kozlowski+dt@linaro.org, wxt@rock-chips.com, linux-kernel@vger.kernel.org, heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org, kever.yang@rock-chips.com, sebastian.reichel@collabora.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH v1 1/2] dt-bindings: pwm: rockchip: add interrupts
 property
Message-ID: <166456772354.777288.8174901492888529492.robh@kernel.org>
References: <94bcb278-7bb9-d173-497c-fe12682c4a17@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <94bcb278-7bb9-d173-497c-fe12682c4a17@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_125527_485235_A71CB65C 
X-CRM114-Status: GOOD (  15.34  )
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

On Thu, 29 Sep 2022 16:04:00 +0200, Johan Jonker wrote:
> The Rockchip SoCs have 4 or more built-in PWM channels.
> 
> Configurable to operate in capture mode.
> Measures the high/low polarity effective cycles of this input waveform
> Generates a single interrupt at the transition of input waveform polarity
> 
> Configurable to operate in continuous mode or one-shot mode.
> One-shot operation will produce N + 1 periods of the waveform,
> where N is the repeat counter value, and generates a single interrupt at
> the end of operation.
> Continuous mode generates the waveform continuously and
> do not generates any interrupts.
> 
> Older SoCs have an interrupt for each node.
> Newer models share an interrupt.
> 
> Add interrupts property to the pwm-rockchip.yaml file.
> DT describes hardware. Rockchip PWM driver support for
> interrupts might not available.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
