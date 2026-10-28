Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475F7606A31A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 17:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zbJ45yUh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=DiRcGvik
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZM2ZFjU/uOI6+E5OdYyWmIhxFto/QFxqsRIlnEVHDm8=; b=zbJ45yUhg88gxTorq38+z/V8YU
	wa0UXbLXYepJtuZmuqUmMenm3jeV2yO4IYhBKOtlYzWHAvC6oeyJC1F5+QintoIyfmnWeqpJl8fPm
	jdaIrUfSB0QkxoEF/D2CZ2Wow8s9tXrn+JiY219eY7cl+vmRRirkjith6045XhLuJpzzyISY8WmsO
	KXudqLbQdJc+BBC+Rxv62N6AJtxepGk1ClAMCFLHCUq2LdUhmujXkTQpE65AV44Y6h5AUeBUu7mEb
	36a6+MxGCjmTPTLO239kzVM1ujZpJXxbVVplxs0X3EknTjKw0rJ8/e7X4fYdEXQsZ6Rjzjb4mrdIS
	HABpRf0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM7BT-00000007dlz-0gqB;
	Wed, 28 Oct 2026 17:11:31 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM7BP-00000007dl8-3MgC
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 17:11:29 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4a5177d78c7so12036505e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2026 10:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793207485; x=1793812285; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OBAS8LSYWCRFarKET5k50Emev7tmcCz5Lq+Z90k9nVI=;
        b=DiRcGvik1jQoujbSjdw8+WedJm7P1nTABrETdd1J+vsxb39wqQ5Vh+idflAno0l3/E
         CFUJDsdVC3cRhHAkao8kGo5Ir8iI19Dcp+Ln8k0FJCcScKQ9uefI02KCja0avpYySWrc
         T4nGYj7Ay4qC4aZvmlI3ZFd2LcqHwUCgCBHpU/RQr/Zf2amHYkDAsDMDrpCXmaznjrN/
         3VbUN/Xz5aA/erarwM2Z7fgw3/xLAs3Bvqy5WtWg9ASE9+muStdAqxL/7bQTUsriWsiG
         huv4YzfU42BtrapYXbVVybgX+lqJViPSHczmWoDPMRrekH6579Vdy4LiBrsQ1+A/P9G+
         pGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793207485; x=1793812285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=OBAS8LSYWCRFarKET5k50Emev7tmcCz5Lq+Z90k9nVI=;
        b=mMfEa1Yz9p3RixUaOvXq9q1PDOMiem6XFfPfAEgjhKkn0OpODBPV1rUWJU6nnKc+1y
         RWdY3ZmnsLx3/XKO+PjuXYOevajSkbe11pKMP8A2+0QzaqR41palWpkPszJ/cqg6I/ds
         sd9rqccJqJiyvttN8k9ayF2bXzdQkUMtKELRklx8SxjCTSLAu55iSbIOBueRUhl4xIp2
         y1Vc4/doMvdwTrdfR5pYdoDDtDXxdxoh9zWby4vWm2CEnwEm8bg0IoaKCZENAyFR0+rW
         TkwK0TYs/5bNa6nEJYJwIOcYRdc3yIyOiXa3hQgqRRw1OqTPlQDua9MwDWNvRgJn+jfM
         oDSA==
X-Forwarded-Encrypted: i=1; AKwUvBwdjEQrfmn1P62j0+yVzu30mD6m1T1N9j525MNvdrHu8oS7wzvpFxIJXblKvOh5VAd2WURbIf0NqjiLGqrNlA==@lists.infradead.org
X-Gm-Message-State: AFq9FYLu1vDizblzvT0ICcYj0Hp6rE+SILyTNhioT7M5xymiZp/pYK20
	xbfrJ61NJZdrKUrSnyI4Anajh4g17I9LWceBKGR1sKX2RzFl5Wx03VGX
X-Gm-Gg: AYBFou3MUNZJ8vLlKBlOpRg47xpBiBZUF002v6Tw89l565GQzK/A/ZwRtkVFQsaBIZi
	yi/Uj2qBtsnqHjGywu5Sd1B30HKEx0lE/a/Dw6HtFxXCcqvFoIrigxrFQJ386p5lT99er9HLvBm
	JI0dfLTgi6qVSbMkPSfxW6iHJ9ZlnymZIuOKEtrI4W9tih3kp3OviBoZjupchhUkyjawB27mZMj
	NgPYu9ZBTlW2D+mQWC93emztdxIPsvK2zi6gBqiv7KeoaNOMOOA8LJ1mUCTRvDdS00asrNEPD8S
	NdwCZl0bpoDE8TEpKkucZKHpNZky5dY7f0JmoiyrrZPjl/xwsL6qD00S2puWuUhjgcNWLNo1I6m
	ARJoZVdjmVxXFsQ/auhKYBUqg3Q5539moGhkTXjgxFZVxi3c4AdABjIQgLzYNf+eAz15C+MFacR
	afkWJH1rHW1etpxdiRmFNb5sus0wvGPmQPgTxYipMD6Kd9FyCMMZW2Ky8jzmwRDO4UJ+bpSPM5C
	4kDDc8LyvpoJRfKvhx7ZAp8vOMSFYQ85k6Gr5t6mgj1YjSKMySUBgrDCQMVY+omrnrUWOSxaXu8
	1di5x07zpETAt2p1/8xnlImc501YUvSa8WS49aK/9INAIfDasoScAbsVFt3yk6+E6Kw4TWkRAk/
	ODgb+26zwj451EAI5HuoILFn0u71ZcR9QuSoYt0BzRU/X2Q==
X-Received: by 2002:a05:600d:8492:b0:4a5:5fb9:5d35 with SMTP id 5b1f17b1804b1-4a9672f7853mr41963935e9.21.1793207485112;
        Wed, 28 Oct 2026 10:11:25 -0700 (PDT)
Received: from tachyon.internal (2.155.41.158.dyn.user.ono.com. [2.155.41.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4aa813d2950sm4897195e9.8.2026.10.28.10.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 10:11:24 -0700 (PDT)
From: =?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
To: shawn.lin@rock-chips.com
Cc: lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	manivannan.sadhasivam@oss.qualcomm.com,
	bhelgaas@google.com,
	robh@kernel.org,
	heiko@sntech.de,
	dlemoal@kernel.org,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	iav@iav.lv
Subject: Re: [PATCH v3] PCI: rockchip: Don't lengthen PERST# when power is already valid
Date: Wed, 28 Oct 2026 17:11:22 +0000
Message-ID: <20261028171122.3422629-1-ehbello@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <95aeecc0-2794-4cc6-a635-5c042afc1405@rock-chips.com>
References: <20261028005603.2399220-1-ehbello@gmail.com> <cf541723-eb4c-4ba6-92c5-33baafc20e7c@rock-chips.com> <20261028015923.2436122-1-ehbello@gmail.com> <95aeecc0-2794-4cc6-a635-5c042afc1405@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_101127_856908_5884ABDD 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, 28 Oct 2026 02:21:14 +0000, Shawn Lin wrote:

> Was it possible to add a DT property for configurable delay? I came
> across several EPs need quite a longer wait time, so add it in the
> vendor tree for dwc-based IP[1]. That could be applied here to slove
> your cases and others', and might avoid regression.
>
> [1]
> https://github.com/rockchip-linux/kernel/blob/develop-6.12/drivers/pci/controller/dwc/pcie-dw-rockchip.c#L865

Thanks -- that is a better shape than mine, and I will do it.

I will mirror the vendor driver: rockchip,perst-inactive-ms for the pulse, and
rockchip,s2r-perst-inactive-ms for the resume path, since the two paths want
different values here as well.

One thing I would rather ask than guess: should the default stay at
PCIE_T_PVPERL_MS, with affected boards setting the property, or should the
default be the spec minimum, with the property there for endpoints that need
longer?

What makes me ask is where T_PVPERL is measured from. It runs from power
stable to PERST# inactive, so on a board whose slot rails are regulator-
always-on it is already satisfied seconds before the driver touches the
GPIO, and the 100 ms then only widens the pulse. The one pulse-width floor
the spec gives is T_PERST, 100 us.

On my board that difference decides whether the JMB585 answers config reads at
all: 0 of 5 boots with a 100 ms pulse, 5 of 5 with a short one, with the
power-settling time held constant across both.

Keeping the current default is the safer change and I am happy to do that. I
would just rather we did it knowingly, instead of carrying a number that was
only ever right for boards which power the slot at the moment they assert
PERST#.

Secondary question: do you want the vendor-prefixed names, or would the DT
binding maintainers prefer something generic, given the timing comes from the
CEM spec rather than from Rockchip?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
