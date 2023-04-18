Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65CE8C77B72
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 02:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0A0T0J5si6AJLGG+OLyd1wySvxoS/VucaKlXpwlrobA=; b=tTB
	PibAJvK8XpzNe3JtGi80khGt+3pWtBj2oKQT3WRpf9uoDihbnEInsOd9X6cMNj2DtdHRGxCFUNyUo
	/UbQK8HZhNZzWbyieaL5E6KSEgXJzLMejjfBXAZmNJkHNCNyUUqoHtJYv2PRcxcekdgAh823fseO5
	yT6movVRALyG/XW+8FNNH4pRgncVqkeQBeaZLkwFVkMhl41NavzolPHbBo6O/PnQcy0Mne/KXskX0
	4jUczsLywU603UoyGQFHP1zbroT+vAxKEV2o9ifLW8RlQFBbFWeysH2JkzM5yyFtIJlGuzPQD+6PM
	eV/5T1GiJlB5PkQeiJ7HOf6kppGCRAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poawo-000fGt-0G;
	Tue, 18 Apr 2023 02:19:58 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poawl-000fFW-1z
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Apr 2023 02:19:56 +0000
Received: by mail-ej1-x634.google.com with SMTP id sz19so12261419ejc.2
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Apr 2023 19:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681784392; x=1684376392;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sLp1HZnlgPSvHgBiHvDqWBYSYkw5NGpdiarsGJcfed4=;
        b=CT5wxernkD+4xw0e3l3fFvv3o9Ce4KQEiyEQxpVAN3g8pbDU3P4WXxIqQQEpTPv7Kv
         seuHikYGbeHD9mv0yAwGwLHXCoe85pvOXyBbvwCjvrUf8HrIzEFNR78XH/K66YA0cBI9
         fQEZIP0xkxI/2gwyWb7Eihx/D5T7fRfsSqygr3P7/Y23lBssPV77lbvMyEkPk4CP+9bq
         NkLi0cqmzJsR3FictnfAfnS9XRSH4qv08hGrTenX/lMHBPDGYC7T6q0yspRXxW8ZK4pD
         shqX2Sr6AldO2sgabBXoqOIQ8+2I04R3b2f1w9uigCr23qDyUD73nWng2MZyaaI3efB0
         snDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681784392; x=1684376392;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sLp1HZnlgPSvHgBiHvDqWBYSYkw5NGpdiarsGJcfed4=;
        b=MiyKguYOIlsKzRd8eHTkt15EGExrU+TWvtp5nbkp/II4bs4l06XdryhT76m8Sjn1FU
         6ftzcgCPMwVZV1mIN0O4DI3pJUINqmNwespce+YAeorPckH+6wnfaE9WGaaYT3sa3q0s
         YW1/KbVC+Q2rZLz7BTQHJQFf6ahjQ/yPrgeZqQyc80XxNxLV1zf3uMGCQuBgpH+z3IBJ
         cueUe7QUQeCWfTjLj4hTF4HOaMSicl4nT8ZW7EBMg1LlKvAm3o/2IkMfyeJWBHz/uMjU
         RtJx/yPzCCwG7rP02XF7lw359hvC4LsptNY5uqOJHlJyPtQHch6HojJWDXCcXsw/2Mh5
         2qdA==
X-Gm-Message-State: AAQBX9d85lK5bzTcIFaFHaLYvp7t8vLixihwkfJpbdniie0E60hAXCVj
	3szzUPXGilTw7mnBSD8pWlOhZLTFUGbjQ3EKyU6RDUeLHps=
X-Google-Smtp-Source: AKy350YKEaTbYs7sJ477+YjXVa2Ix76otfP+Lwt7XLfRMZkOdOoQsyg657WpJo6FHw3NLxYB+rtQ6EqwThyGc08dl9c=
X-Received: by 2002:a17:907:7d9e:b0:94f:8f46:b286 with SMTP id
 oz30-20020a1709077d9e00b0094f8f46b286mr1912179ejc.15.1681784391893; Mon, 17
 Apr 2023 19:19:51 -0700 (PDT)
MIME-Version: 1.0
From: Doug Brewer <brewer.doug@gmail.com>
Date: Tue, 18 Apr 2023 10:19:40 +0800
Message-ID: <CAG0V13RUkKn1TPfa3DSeXDeBfJrYVXaouP2WMKrCdX-h0Xqrog@mail.gmail.com>
Subject: PCIe problem on RK3568 EVB
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_191955_654587_E7392719 
X-CRM114-Status: UNSURE (   4.87  )
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

Hello,

I added the following lines in rk3568-evb1-v10.dts:

pcie30_avdd0v9: pcie30-avdd0v9 {
       compatible = "regulator-fixed";
       regulator-name = "pcie30_avdd0v9";
       regulator-always-on;
       regulator-boot-on;
       regulator-min-microvolt = <900000>;
       regulator-max-microvolt = <900000>;
       vin-supply = <&vcc3v3_sys>;
};

pcie30_avdd1v8: pcie30-avdd1v8 {
       compatible = "regulator-fixed";
       regulator-name = "pcie30_avdd1v8";
       regulator-always-on;
       regulator-boot-on;
       regulator-min-microvolt = <1800000>;
       regulator-max-microvolt = <1800000>;
       vin-supply = <&vcc3v3_sys>;
};

vcc3v3_pcie: gpio-regulator {
       compatible = "regulator-fixed";
       regulator-name = "vcc3v3_pcie";
       regulator-min-microvolt = <3300000>;
       regulator-max-microvolt = <3300000>;
       enable-active-high;
       gpio = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
       startup-delay-us = <5000>;
       vin-supply = <&dc_12v>;
};

&pcie30phy {
       status = "okay";
};

&pcie3x2 {
       reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
       vpcie3v3-supply = <&vcc3v3_pcie>;
       status = "okay";
};

lspci produces no output (literally nothing), even with -vvvv.
Any idea how to debug this?  Thanks.

- Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
