Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FFF606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 01:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DGJFeydx;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=iav.lv header.i=@iav.lv header.a=rsa-sha256 header.s=zoho header.b=by21JAX5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZjlVmALXcEPoTXYJjPcm/c4Q/Ti4p6tWTwBnvXH/GR4=; b=DGJFeydxWdOyA5vH4sDxs/xaZe
	ExV3THiZ7Ena8iIIJrN3ngRupV2wgRmu38I5CgWoWA85exsnLt2fE6sjlxkCTE0UZLN6+RK3rc8yX
	4H01EobR0V+8bd2oS8ucUR6MemG3givuIbQs62ixEptukzRXs2F9KChyEI0CeooHTG/9YliMyPh0W
	b8AVfb6oYoku6Wb+0C6KCHTDSlOzMpUhrZk/a0DtLX2HMZnRAmz+BWs7aCgJksnRuwbuu5xaBenKO
	PvAEOOfSwN6vZG9TBvLHDqynMOgmEY4I+XCK95vyPGs7a67AClkTKTKlN/wXifyO4OiJWiJ//pmgC
	jnYU9fTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOmXL-00000007VQI-3e5n;
	Thu, 05 Nov 2026 01:45:07 +0000
Received: from sender-op-o15.zoho.eu ([136.143.169.15])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOmXI-00000007VP4-2Owe;
	Thu, 05 Nov 2026 01:45:06 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1793843096; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=Yuofk1O36nbwUk0teyUxBHcwFtB6oYbW8laHO1bPwqKjuaUVxh2pNk2cVRd6reWo2zokw7ekbkYk7qPOcBooOIq8RGAFinerkkj/EfmgsW9z70wMYNWznUIrZuY2OBIfiQfzpfEJQdmRU0X0e/4zPaI92fEqGq/CAfZmw8zBBNM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1793843096; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Qz2KgSvxs/QubGSn6ctkR3NuYfESAeObXcUr3tbspdM=; 
	b=cAqXRxjmIvDH9BHAkZOnilJaKMfbXcp+dX49vSKTW+vO6w8mErwWQseqw9YeV33p1StRXSVYMbce7q2+rRuGn2FYJpL68+OTG51tzfrP/L68GQBNbPf8MYSf+Q8nXLEIt7Dc73N94S+GCQzTgba/iHXgqY+oP4YFhfCRgW3h8dk=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=iav.lv;
	spf=pass  smtp.mailfrom=iav@iav.lv;
	dmarc=pass header.from=<iav@iav.lv>
DKIM-Signature: a=rsa-sha256; b=by21JAX5eS17IyPINnm3VUQLZdKacWLqLKfQqeNoPP+8mDh++WkkOA5DPxoDEywi2BQ1NgJXLJHkXLgv4NVRPbZ8hI1cJLWEgQcOBhn2J/qblujzvpAjDH/ehWy//ktm9ZEMGuuaI9akOSWIgfgOpygsDkfjvpuyuuqyXN7dKR8=; c=relaxed/relaxed; s=zoho; d=iav.lv; v=1; bh=Qz2KgSvxs/QubGSn6ctkR3NuYfESAeObXcUr3tbspdM=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zoho.eu with SMTPS id 1793843093919792.6849770156605;
	Thu, 5 Nov 2026 02:44:53 +0100 (CET)
Date: Thu, 05 Nov 2026 03:44:52 +0200
From: Igor Velkov <iav@iav.lv>
To: =?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
Cc: iav@iav.lv, shawn.lin@rock-chips.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, bhelgaas@google.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 heiko@sntech.de, dlemoal@kernel.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/2] PCI: rockchip-host: Make the PERST# inactive delay configurable
Message-ID: <20261105-ehbello-perst-v5-tested-by-1@iav.lv>
In-Reply-To: <20261104215848.2087944-1-ehbello@gmail.com>
References: <20261104215848.2087944-1-ehbello@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_174504_883632_1F4624C1 
X-CRM114-Status: UNSURE (   4.46  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Tested on Helios64 (JMB585 behind a GPIO-switched slot supply) and
ROCK Pi 4A (empty slot and a WD SN770 NVMe), 7.3.1 with the series
backported, one s2idle cycle per boot:

  Helios64, no property:          resume 20/20, abort in rockchip_pcie_rd_conf() at probe on 1 of 21 boots
  Helios64, <10> probe and s2r:   resume 20/20, the same abort on 1 of 21 boots
  ROCK Pi 4A, empty slot, none/<10>:  10/10, 10/10
  ROCK Pi 4A, SN770, none/<10>:       10/10, 10/10, NVMe readable after each resume

The default behaves as before, and 10 ms changes nothing here; the
slow JMB585 link on Helios64 shows up at the same rate with either
pulse width.

Tested-by: Igor Velkov <iav@iav.lv>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
