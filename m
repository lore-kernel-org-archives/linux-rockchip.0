Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61BBFC561E6
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 15:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtWMWWUM9JM5O5J3NIgojLp+OcVLuhXAG4O02apnkfs=; b=WjtmwHxQEOeoSU
	K2G72KEGrtoS3kQEATfqZX651u0GFVcHvgEpyh8XGDtCnN9vlq2c3t1h3Hmp6nYdgArYayk0KBFHM
	zuBhDvjckDXdUeBf8ZiCpMPprt+NBi4R7vUhFLih5hGSpc1EivSElpfFIWbemW0qSat2aBmTJwjEU
	lSpIGvBAX3AFYJbe0ZvNnxg4GMDYFoDDA29UPdrKGRv92tt5uCsu/me3YW0sXjrRhU6iF8P57Ci2j
	oM3eSzxNcqEJEVc4hsfr44Ng0Qca6XHJDMSfOxcDruxdSLRJlAaIhKgPhG/C19zCATA5McuiUkv52
	AOHlgg2pmg7wtxiApg2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrdts-00000004DAP-1DXk;
	Wed, 05 Aug 2026 15:51:24 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrdtp-00000004D9o-0p90
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 15:51:22 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4954a2dba6cso1010005e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 08:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785945079; x=1786549879; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aqxi35qz8X0Jeybg10HKbsHNV5CZpS0quNYjwJCSOIM=;
        b=SZMPdmAhRX+Qg+pvH0fqXnPmoJObk7/tBVpbozxCsZyArhsX7GW9UzsY23I+Z3Isnp
         FTYmS+vbZ3/o2jmkiCB8lrPqOJVpQCmhtEiTGuECwQ+u8ldbxlAdz7GCi5woRrI/Azg8
         d46iXNvX0wErT3k6szpcDvWdmOqlx3HqTBITgYW0gqmJseTIgYwmru70AhIJ9e/3H25k
         1UZfWdT0xugt8IHKvwizVTnNanr5FFLtIPk4idto0upWSZ//hwyUiT1tz5iHAOYw1zh7
         +RvDyHTJVRmjjSvNpn8on/AUrJ49kJppejEH0jE548zKA/OE2fwrKrRMpdp1NbdMecCc
         Dmww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785945079; x=1786549879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=aqxi35qz8X0Jeybg10HKbsHNV5CZpS0quNYjwJCSOIM=;
        b=RdiaPjOsf4oupXI7xFXHsV3ckn60RWVzuI8upU3jub8V90Bkce2ToxeBXV0p69Zzo+
         MAdT5AXdHGaX3RN9/SMljd5FI49VvHuvQjstsZF6BcPWEhyAdIUP3ubzUmmvUJF63chD
         J++1mXFFMaqPQxVsps3Mm/3CWKW5rSXN0YuIeziDbAh72zdP4tZbnITSkfj6FBI6+rb3
         x4pUgnAf5yHS7GZdSPJoEUV2AVt8v3L5vJ/qPxN6vMPyTywVzaZDG/D9ClCMIuFC8qoo
         s7xvapMyYgdFo2MyyFei88BUNS3gjbhER1PUwFmJV1wx1jwapviqnEtCyzaw/LMdgnVm
         tTgg==
X-Forwarded-Encrypted: i=1; AHgh+RqXdcbbAsF99f699Pt+gDXOp1aHvahs88rh6MI5Fh1DwiYHU0E1vJb1SaJXBlEU9XDwS5g1Cz0kdrRaBBliag==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywhv3+4ssFCJuQhQ7sq57uGX1AE36xGFKy17Wb03WQLJ6ShiuXy
	iZY84aV82Y3eeLShPZHbKjDFnanR5me7vKfnGsaP1Xk7iesWbSb6FJQs
X-Gm-Gg: AR+sD10MkdyAXhkzmgYRKc/WgzMU4gHJ+5osLipd0GHYyavpMedXoonjm9c31phZ7CP
	i6Z9EhHE9cc9dBn8rmqZ74m11KUJJyYbq7I77+SIOXLIfNWbEOSyFhW4UE/GA3thwv0IhVjPqXi
	Q4LrxrJpL+qtQVE4ivYV7yBlt+CZgO66c3MEU+H2ctCPh9u1nNFAXp0Ra9sKHNc7dgPBvQI5EKG
	kZH20bPz2GxXxJdH2/943F59lBAKIidxRPtEC3xJg/6jW8pB748vQGf9BQ9tm3/2TSSIppGBboC
	5s2Opkk/QOAF04cZTdaUFQkTokwl/LDdBvVt2EIK57/q/1yCWyqVCSa05+VbH2suduFiw3oTLW+
	jixHtjl+s7Ok1UGKDKzlisQmd6dL/hPsx+EkwypTKyAvaiv/NFOGz7nv5IvGeGWeestQNXzTMb9
	A6rduoVL1FxWDwU/vq8WLKh4qdZS9/3ODjreMCFZ1MHabWSSZr4vpV3DKfD+BzQCHpfKwXj8ZU8
	sN0Un8jyQxJZgRzSaQn4bS4vvP/57ChdGa7VB/Iy5ZlSAuUPIGdnM76yikXMcrbt8Ht
X-Received: by 2002:a05:600c:1550:b0:493:ad11:6d5c with SMTP id 5b1f17b1804b1-4994e7cf0dcmr48652415e9.4.1785945079009;
        Wed, 05 Aug 2026 08:51:19 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B86F10001BE789C6EE938EE.dsl.pool.telekom.hu. [2001:4c4e:1b86:f100:1be:789c:6ee9:38ee])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4994e0356d4sm101820155e9.10.2026.08.05.08.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 08:51:18 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/rockchip: dw_hdmi_qp: attach the HDMI Colorspace connector property
Date: Wed,  5 Aug 2026 17:51:04 +0200
Message-ID: <20260805155107.11167-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260805154418.8133B1F00A3A@smtp.kernel.org>
References: <20260805154418.8133B1F00A3A@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_085121_333513_C8F5BE15 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: Simona Vetter <simona@ffwll.ch>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Thank you for the review.

The lifetime mismatch is real and worth spelling out precisely: hdmi is
allocated with drmm_kzalloc() against the DRM device, while the HPD
interrupt is registered with devm_request_threaded_irq() against the
component's platform device, with hdmi as the cookie and IRQF_SHARED
set. The bind error paths that follow the IRQ registration predate this
patch: encoder init, dw_hdmi_qp_bind() and drm_bridge_connector_init()
can all return with the handler still registered. This patch adds one
more such return, which can only trigger if the property allocation
fails under memory pressure.

So the issue is pre-existing, correctly flagged as such, and this change
does not alter the exposure in any practical way. The clean fix looks
orthogonal to this patch: register the IRQ with plain
request_threaded_irq() and tie its release to the DRM device with
drmm_add_action_or_reset(), so the handler cannot outlive the structure
it dereferences. Happy to send that as a separate follow-up if the
maintainers think it is worth doing.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
