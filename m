Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DF53C7619A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Apr 2023 15:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXrRgWisq93tU8XAxc6Bxo0riszb2zKiiRm0AFBRGak=; b=IEgTS+c8NX7HMp
	gtfu9Cx8wrRFd118C0qvRuz5I0/dreK/s11Z/JfRGsTcSiT6wL8I1vhKucQW48R+FVTEczVD+0LxN
	xdEjqPplh7BBFpkeFnEdqQ/RshnmcxIC1QMnOHg18uYqoGpGUf0vD6ByyxqhkW/Iw8OZ+50T+wBDu
	6PKAld4ryDQ2RzeTVdpDdUrmmjq52KWdmQLgUpoWWgeNwnO7MKf1FzMXtAhaqYQ2aG8HG5ILIzsD1
	e3Av18iD6ubDsNvlA2lwEQxyjF7CrlRs5/CN/8YhYoo8n3FE0IsIAz2a0oefkVWkn111kp/jcFl/Z
	LXvnbiiltwfpP3ozgZfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmcEO-003bOC-0B;
	Wed, 12 Apr 2023 15:17:56 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmcEK-003bKQ-0V;
	Wed, 12 Apr 2023 15:17:53 +0000
Received: by mail-pj1-x102f.google.com with SMTP id pc4-20020a17090b3b8400b0024676052044so11943131pjb.1;
        Wed, 12 Apr 2023 08:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681312655; x=1683904655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lXF0M8ANb/S1+Ov1PDbB2m5VawQaqhAZf2fWUn9CoWA=;
        b=hsuFVrxxQ6xiG07eLMH08j6NecdqR/0cfvRQl67MPuAhj4+Dvlqzw2gYdWuj33s0DK
         ot2595G2+QNgi9c2sX/2tO3oEhwbmg+uQewBragkuiC+/Lxbkx4DzYFoQZit1xfsy6kN
         E+VrsQTwusG8xpOtJCIfQSbkfUOIElZ+8omWH7+waQ0HZ7Vg2nFCjH5SweekQjsV/qHC
         SsBy9zoYC0pKbIQkezJOKjYUJ0jjF8NymqCjzXYyolE4G23orKDH8hv+QsRq/Bb47nCk
         NfKuaHJMBIrJvCny1ExYgWbkwof4c+b4ytdHgjLRBGcracw4CLMLsfxLNcbtAaBNbI2J
         ZXgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681312655; x=1683904655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lXF0M8ANb/S1+Ov1PDbB2m5VawQaqhAZf2fWUn9CoWA=;
        b=vLsA4GR62jyy48Af4ZTOkeIWwLj05JG7pufadryyacENTIsGdyrCIOObv1eIq5TIE7
         Z0U/tTubHUht2kMYrOFHO2SicHFHk25Mu1Z5cQ1JCyMDYwyH/rBxsR+56rwUU8yc69oo
         QLHtkSV+UvIerr3HCZ+BhWZbPkt2WSdfWPHiJ3p56wgVlFhik4zHJCQEJvfs85ETXpoR
         fe+j0w3CAAC/EXGHAwNw0ngZkVJyQFoZBM61jVfsFMH0Gbuiew1mtNPL6BDuFwZN+DQy
         1NSLdUeabf9TBjwBD9Fjrejp2VWSKkt+8i0kM0Iguviw8TIlnsQIWlEJkYf0R12kUTaY
         4RTg==
X-Gm-Message-State: AAQBX9fLgBE6oWLtN4d1htY7BvxHixDAQ3L5K94/w3EqWQ18wPHS6QOy
	SEXXiYX4F2U8hBB5r3NfHqU=
X-Google-Smtp-Source: AKy350aodtH/90OqVyY8JXbpvT8JGcsKs6dqZXseHtJMWkNDpxI6xnlmD57rGgpA1CEM8T1G8sRidg==
X-Received: by 2002:a17:903:124f:b0:1a5:5e7:a1c9 with SMTP id u15-20020a170903124f00b001a505e7a1c9mr9370822plh.61.1681312655059;
        Wed, 12 Apr 2023 08:17:35 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id e12-20020a170902d38c00b001a64fb9cf54sm4124118pld.44.2023.04.12.08.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Apr 2023 08:17:34 -0700 (PDT)
Date: Wed, 12 Apr 2023 08:17:33 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 1/1] dt-bindings: hwmon: pwm-fan: Convert to DT schema
Message-ID: <6bd199d3-a551-4e74-bc38-3ea0558a40d6@roeck-us.net>
References: <20230406182000.956275-1-cristian.ciocaltea@collabora.com>
 <20230406182000.956275-2-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230406182000.956275-2-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_081752_208647_12C386CF 
X-CRM114-Status: UNSURE (   8.74  )
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

On Thu, Apr 06, 2023 at 09:20:00PM +0300, Cristian Ciocaltea wrote:
> Convert the PWM fan bindings to DT schema format.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to hwmon-next.

Thanks,
Guenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
