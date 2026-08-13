Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 842C0C5CFEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 07:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qh0XSytNqUTwl1cxjvTMu9dBvKRF3S+UJ4Q+561vMAA=; b=OxZzcOP0mxd0LM
	dT+ylOJehnOTbgg2yjjLMiZhsbkoIofenT16Z4WaFCA6uXxd7HC6rxUa32VC/FZJEH6nEXLiAXMzu
	t8XWlnPTlStPcLlsGpDj9P6MzgNGHQVHhGpaEGguA3iVWhmYpofPTXqWlLRvK/IsReDry5nQEom17
	5/YdZyS4Qa35sZGFqNItjStE5zkgHVeHRxyYYQdm+En7E5YEJtOD9ekXa5Jlb7Py6UHOmye3D90Xv
	MobB60d1mpzeVUt/MFMoQq+P9OZbfMmjFIIbmQIPJgkGK4wwCpqaxXEZXegl3fVUHJeEmLDM/rWkN
	eWBi4XUjGlKycWKG3aOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuPYW-0000000HZJC-3qs3;
	Thu, 13 Aug 2026 07:08:48 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuPYU-0000000HZIT-1jdG
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Aug 2026 07:08:47 +0000
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-90a6b298889so3402616d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2026 00:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786604925; x=1787209725; darn=lists.infradead.org;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iuDD1XeviXsek2JFvWXurAk7kOqWb+9KqvMJxm4ILsw=;
        b=Nzxk1LcQW/93FxSsHMPXVCUK0dZeciPkNCSEdyxbX2ikCky3FbHzabysL23fuLsKJ+
         ALEYqoe6Ab9zW2hxWMdWoczXlIc6jLCkw9R2L3NaquYdM/d42znbsI5tWWBzKdzss3Fh
         +GTBvvuAofqrtGVdViUWH6XLqsVwfZaGf8j7SiMIscUDHyahwgniPMikJDzmAvx+Z7HA
         E+wlzvJrgzp6CcYCW3jUUXMncLW6sRVbs7m9ImqwkQRoChtoEMw2pqD3Flx5nfv9uV4c
         4/1tdqCukITsxQPi8r6T6FZ3Pcp/o+Pp8uG167A4utvNr/J97BaJjb6bsVp+cg9UUexT
         OZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786604925; x=1787209725;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iuDD1XeviXsek2JFvWXurAk7kOqWb+9KqvMJxm4ILsw=;
        b=tR9JSM5uw+JP/UAffP6LIonTw65lhfqONWiUPttrZgSA5f9BMHLYDhcOkkCkLBWBtc
         KLr9zcH01vEJ9FndTcjPIazri4jKK9vHg+t9wmQCf9LluoVswzOhrfbozx4/v4Zwxr+o
         d74B8A5r+WNKUvEp/Zgg277JrDLI49YvsaCxCsJ2CjNWOf3UfHREcXYh1hmQ70joZTXS
         +2oRkxtRmxC4GPF9WvvJ3tg00f8TW7ylvln9hDVvr3Fm8/6Qb7KH1EgroFOqoXHW/1cC
         KfcDgtTGk0iVVQb0NkTKhb+hyhD8xx/FJc9ttqSR9ugXmDd5iMXsGsahsgxr4YdDr+0a
         XCtA==
X-Gm-Message-State: AOJu0YxIlIuARH/jN0neAwQHtuPM22AzT4hd4oc8g1Z3/S/IOZHzCku6
	nDkeuGR696UvmSrbk+eFx0uAbCHMUSO6MagI+85vCvsx5hpC5JKDWvgU
X-Gm-Gg: AR+sD13CNVYNuEmFqVL25/Wv4mGtNFt1Vfde5ABQLt0RqZUZkCmIA1ajkaaS4w8gBlJ
	nrEO4rpBymebYsdQXtbsX6VWkNLojLXLddY/MUUjUPQmW58ng1nDZTgjkxwg0fzAZLIt77rUSde
	/pxfaLkRpSiUia9l8iN0AkN99pAlyZVKQMPS4zL4CgdIyy2d4kre3bBxcVukAa8gmL9WtWGtsKR
	8V+tPpoRAgTpRm+wUd4Q1MzSVLoB57n2lAlhHk3D4hGYuqnjpDAkaRv0PRjpRnCTQQ1kikYV7li
	TR0yNz8TtexNyFe4+ET8DxzyNlKstiq8g4FAhwKlaZ/DwJWIr+VxUDG7yOXgh7Jn9FzTbZg6bkK
	Y5Nqnwi9O1PL83tprz9rGOnUnkZv01RLh9AtmSMYijCYrg9CyJ/z0w5WOq2OC5I2IuP/JtVJaMh
	WMl/w0KtUpNQXzWZz+hse/CRxJuQA6NUsfTsUZph7Je6tJwcyUyK2P
X-Received: by 2002:a05:6214:3d98:b0:908:93ff:daa8 with SMTP id 6a1803df08f44-90a80982dbcmr39927366d6.3.1786604924739;
        Thu, 13 Aug 2026 00:08:44 -0700 (PDT)
Received: from localhost ([37.19.206.57])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-90a817bd639sm9060946d6.17.2026.08.13.00.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2026 00:08:44 -0700 (PDT)
Date: Thu, 13 Aug 2026 10:08:39 +0300
From: Dan Carpenter <error27@gmail.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org
Subject: [bug report] drm/rockchip: dw_hdmi: Propagate bus format to display
 driver
Message-ID: <an1td9BdKRo2JUDy@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_000846_464810_E43918F2 
X-CRM114-Status: UNSURE (   6.64  )
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

Hello Jonas Karlman,

Commit dc70272cc184 ("drm/rockchip: dw_hdmi: Propagate bus format to
display driver") from May 18, 2026 (linux-next), leads to the
following Smatch static checker warning:

	drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c:292 dw_hdmi_rockchip_get_bus_format()
	error: 'bridge_state' dereferencing possible ERR_PTR()

drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
    278 static u32 dw_hdmi_rockchip_get_bus_format(struct drm_encoder *encoder,
    279                                            struct drm_connector_state *conn_state)
    280 {
    281         struct drm_bridge *bridge __free(drm_bridge_put) = NULL;
    282         struct drm_bridge_state *bridge_state;
    283 
    284         bridge = drm_bridge_chain_get_first_bridge(encoder);
    285         if (!bridge)
    286                 return 0;
    287 
    288         bridge_state = drm_atomic_get_bridge_state(conn_state->state, bridge);
    289         if (!bridge_state)

This should be if (IS_ERR(bridge_state)).

    290                 return 0;
    291 
--> 292         if (bridge_state->input_bus_cfg.format != MEDIA_BUS_FMT_FIXED)
    293                 return bridge_state->input_bus_cfg.format;
    294 
    295         return bridge_state->output_bus_cfg.format;
    296 }

This email is a free service from the Smatch-CI project [smatch.sf.net].

regards,
dan carpenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
