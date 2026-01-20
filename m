Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73D49D2629C
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 19:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlB1vT6+QtPut2kP5UAeJKM6hHYEDBq0nXBPQkfOVEA=; b=vqhC8tdFuP6SDQ
	11y8D2ij6XuAN3xJlAkbvm364WgUw+EW9AS4mlDtKyZYmuxK8t3Pfv5YGuiHzVHKxy+GVfnDqi1pE
	EPyIooAQjviWnA1xW7Yv7y1rftifldLSk3i9z8ZrZXHnQ/SjKkrsEbWHhLbQ0fUferVCLfv9Cakuy
	VIhx4aUsbz4zNxAYkX+eMC14td5S0vXE2DVHu/hR/BtIYfSJpujllpwBb6deC90UegWiJjPDvfMWE
	hka5bLWl7Mbm7tVQwPZnV0KuJdZS1HOQkBS8yYJESa51wcroxt3Zz01XxOXYwLojE1UZGxn08ibmU
	ySmLVzAlwwBH8LKaKsJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viHoi-00000004P8I-2suJ;
	Tue, 20 Jan 2026 19:55:08 +0000
Received: from mail-dy1-x132d.google.com ([2607:f8b0:4864:20::132d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viHoe-00000004P7G-1zzq
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 19:55:06 +0000
Received: by mail-dy1-x132d.google.com with SMTP id 5a478bee46e88-2b6c6f89f23so7347066eec.1
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Jan 2026 11:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768938903; x=1769543703; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GQSNIybqd3//ZKhTtvTbCXW0y0uZ8xcJxwgof6wQOVw=;
        b=laPZMVsvz75043eB+kYpm+3QvzfI58m6kdX+pYFijvJmthhvWNbMvOYxATb488fZho
         nUf+h3l66H566jBm12MInUOgjWryoP+XpOZfhcWCl4ga7GwsOd18+RwDiI7ugmVaoBxs
         twrC2UQaQ42dY/y1SXUm0+SJKamxrXtrFG4UqTWAfuiUdvoO1T1PYfW23cf0TlymvqcC
         5W/p9T6ttMqS2wcpmXt9WkoAMfQR76lOzvZuK0wPbm1xz011tf+mBOnRCNrhcidF0R2w
         9QiW69CdMZ93/1SS7rEC1bSklKeoAjOdPrBd1bXkDzbx7+vW4pfjWqSViwrfkBY7AaIg
         lxZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768938903; x=1769543703;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GQSNIybqd3//ZKhTtvTbCXW0y0uZ8xcJxwgof6wQOVw=;
        b=UlnQNeeFtX/mMRLJDVVTp6PJeE0ytdCDylgaZYJScC51igh+AD2Mh6LibQCS/VUmrI
         ot5PiGr/xKvCv8310nCyXygGBIX8vPAuMYeRQEwUd/pibt4M/XaJDeZ01slhpDzqAnpW
         aQ+i9BruyGawOs7hK7Dx0nzu8qUK4wSO/6GPuG2lhLxNoHtT6PeGTwE/soKxSe52CqgJ
         YWJuWy5dAbk18O5CPVvhHEH2qdACyg7vduNuJlkJMYf4XAWBnQruUhos07dgGdJG73U5
         hnR7xSCo0KUwBWIa5mLpWp6BxRNPcDBEF9jmQMA0mi0EAdkqFCwu1u3+q9pLTATvr/i2
         iIFQ==
X-Gm-Message-State: AOJu0YxWQFfnl6jOND3gwlCNLRpOqx6+8/9qy0IGF0XHQYec9gf0jklG
	ZzW0s3808pwMdr+P2JRNHS6Afk6FDMfO1mN/7eqDqnLpS8iP0gZdM1Jg
X-Gm-Gg: AZuq6aKQiN5r9adrwyEWo9+udu7oO1xk+mXrzUjWaq/l1+jk6G5ZtYn4OS3dgKzk76h
	Jsht/ZhOmaefJIKpqBySlwxQw+VxAyzqMWdtY6ZM3Hj/9HOECvkjPYCkJnpYOkTzYdffK3J9gel
	IQlW/C1x1XaRwzeR6+k73rxqWeYN2KpNtPe7RxcKZPxnS1f2f83TYtbVpx2atCOyKpamrw3BjMy
	gNfQNki8C/YTZ+ZRnfd4JvVpZjQvQX+r5YVXg4ONdLJ9qPzmOIXCLychKjXjKz/q+7CRrDWaehK
	wCak3obEHOQfkAvQ7YRUZHJOCqOHpM08lpDTOKXrqM5SP+MwGCPh8Q6BB0EHaP9LXCTNh4QK7gc
	21YW2iuUJGaZVDh7ExuELIRJrCoiFsWhethM0Wz0FR5TJcc8dRM8haMP81D7csGcXWyFcwSJMcI
	j31rwhbeIVxpqVQIY2FbVx10lVQ69H3kE2vWa66M1F6zoxwsVU3lVm
X-Received: by 2002:a05:693c:6001:b0:2b6:c617:f7a0 with SMTP id 5a478bee46e88-2b6c617f916mr8511359eec.6.1768938902933;
        Tue, 20 Jan 2026 11:55:02 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:d631:e554:f0bd:4106])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b34c0eefsm18611112eec.4.2026.01.20.11.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 11:55:02 -0800 (PST)
Date: Tue, 20 Jan 2026 11:54:59 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
	Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	simona@ffwll.ch, airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org, 
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com, neil.armstrong@linaro.org, 
	jagan@edgeble.ai, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	aweinzerl13@yahoo.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: input: touchscreen: goodix: Add "panel"
 property
Message-ID: <4dkhkwtbxmvns335xahyrwijvy5qjyifieuo27eluiehkjzman@v52ihb3o6o3s>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-6-macroalpha82@gmail.com>
 <7863194.oDFzTOozpa@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7863194.oDFzTOozpa@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_115504_512660_AF107C01 
X-CRM114-Status: GOOD (  16.04  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jan 16, 2026 at 10:49:25AM +0100, Heiko St=FCbner wrote:
> Hi Chris,
> =

> Am Dienstag, 13. Januar 2026, 20:57:20 Mitteleurop=E4ische Normalzeit sch=
rieb Chris Morgan:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > =

> > Add a "panel" property to define a relationship between a touchscreen
> > and an associated panel when more than one of each exist in a device.
> > =

> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  Documentation/devicetree/bindings/input/touchscreen/goodix.yaml | 2 ++
> =

> This patch is part of a diverse series right now (drm-panel, input, dts)
> and therefore possibly could be overlooked by Dmitry, as the patch should
> likely go through the input subsystem (or would at least need an Ack from
> Dmitry, for me to take it along) .
> =

> Best way would probably be to pick Rob's Ack and resend it separately
> (pointing to this series as user).

You can definitely take it through another tree.

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Thanks.

-- =

Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
