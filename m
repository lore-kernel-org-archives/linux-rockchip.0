Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3E0606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 21:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OPodh68s;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=iav.lv header.i=@iav.lv header.a=rsa-sha256 header.s=zoho header.b=F96wWoY7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Vlq/iv1t4B51qBQE4e5zkUikrHfxLAwNd6bnW8htebw=; b=OPodh68syc2rR9g9QWCmHZ+xS1
	HN07AAGeuhhlqK+mgZyEzK3RZJvaE4tURknVCKR8O3KCZUH1aw243bcYInDi0jpdyqIu74wvsIvGY
	X3Qm2qJ2s4tKyoRFQdStxNoco2AtkeS6VCOxauN9CSuqDZ1ylmLedLuBtB9MJ6H5enWM2Lvjo/Wg5
	+vdr7KMsVQ4kBDSX+WM3AzhRQb0m8Je7XZejgaQOxl34UfKuL1rk2DF4FC5vO1pORQ7MYVIODJp34
	l1Mov08T58aaCbpzIflhJ8bkg4v41PWtH+h3kHNvrScIyRx1voWuWieGMvr6GowVjPVBXbzJtqRZk
	lnfgPLkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMu7K-0000000CblH-0ijF;
	Fri, 30 Oct 2026 21:26:30 +0000
Received: from sender-op-o15.zoho.eu ([136.143.169.15])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMu7G-0000000CbkM-379D;
	Fri, 30 Oct 2026 21:26:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1793395575; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=N9ZN0xQoJT4kRJpHM0cCQEH5MsHPrdLK7zkOQFVP97l+Avg8KMNwzuD4beVPWq5459BcFYE5Izr/cOMbZcMmXjfiH/Fos22Z7rpVo1bQ2xd9L/jyND09sNVsXERmYl5wmq4j/neaeAir2VukSHOJOiV54wwYQ03IHyOwUnp0Ke8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1793395575; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=TTUFtw/nxnpkCPxNIfivX8Mm378KuN5hPomxuuElLrA=; 
	b=Rc0zeFhdzPCFnyIiRmQ8S6Up4ZIJGzhKeaxnX8cStr3HusYMOyQR9Nov+TI1fqZWvO68ib5k5aVRUPaD5ft32yq//5rKDrvuBGVuAtCisQND8lGtUl3Bg+v4Tshl8OXNkJ5xEn/Xpr6XmEL3+6ro6fyKY3VVwOlxh0cLlDQB1kc=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=iav.lv;
	spf=pass  smtp.mailfrom=iav@iav.lv;
	dmarc=pass header.from=<iav@iav.lv>
DKIM-Signature: a=rsa-sha256; b=F96wWoY7WmkhF0VgiHoa5TMK25awEIFO8KvWBL32+E0EMIO8AAFe7IgN4o6fL7R9DsJsq+VFVHMEFGYX14HaEtOdSwIaZFeHQa+dPttk6q2l/GUlGXdmFtKlzLSEH9/Bg/EjKO0YKkp/QK3GEI6Xrps6e2sMa+FXpeJDUcpDweE=; c=relaxed/relaxed; s=zoho; d=iav.lv; v=1; bh=TTUFtw/nxnpkCPxNIfivX8Mm378KuN5hPomxuuElLrA=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zoho.eu with SMTPS id 1793395574526558.2694898430047;
	Fri, 30 Oct 2026 22:26:14 +0100 (CET)
From: Igor Velkov <iav@iav.lv>
To: Enrique Hernández Bello <ehbello@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, bhelgaas@google.com, robh@kernel.org, heiko@sntech.de, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Igor Velkov <iav@iav.lv>
Subject: Re: [PATCH RFC 0/2] PCI: rockchip-host: Retry training and hot-reset a JMB585 on RK3399
Date: Fri, 30 Oct 2026 23:30:00 +0200
Message-ID: <20261030-rockchip-pcie-s2idle-a53-1@iav.lv>
In-Reply-To: <20261028173117.3457220-1-ehbello@gmail.com>
References: <20261024-rockchip-pcie-resume-v1-0-58e54a5cf5f1@iav.lv> <4316c1da-f7ff-4fa5-a330-512800474e45@rock-chips.com> <20261026-rockchip-pcie-shawn-reply-1@iav.lv> <ff204558-dc22-4d38-b0dc-2c727f983f9f@rock-chips.com> <20261028173117.3457220-1-ehbello@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_142627_278908_DEB85570 
X-CRM114-Status: UNSURE (   3.85  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCAyOCBPY3QgMjAyNiAxNzozMToxNyArMDAwMCwgRW5yaXF1ZSBIZXJuw6FuZGV6IEJl
bGxvIHdyb3RlOgo+IHBpbiBlbnVtZXJhdGlvbiB0byBhbiBBNTMgYW5kIHNlZSB3aGV0aGVyIHlv
dXIgYWJvcnRzIGFsbCBiZWNvbWUgc3luY2hyb25vdXMuCgpIZWxpb3M2NCwgdjcuMyB3aXRoIFNo
YXduJ3MgaG9vayByZWdpc3RlcmVkIGJlZm9yZSBwY2lfaG9zdF9wcm9iZSgpLCBubwpvdGhlciBQ
Q0llIHBhdGNoZXMsIGEgMSBzIHN0YXJ0dXAgZGVsYXkgb24gdGhlIFBDSWUgcG93ZXIgcmVndWxh
dG9yIChEVApvdmVybGF5KSwgczJpZGxlIGZvciAzMCBzOgotIGFsbCBDUFVzOiAyIGFib3J0cyBp
biA0MCBjeWNsZXMsIG9uIENQVTAgYW5kIENQVTE7Ci0gbWF4Y3B1cz00IChBNTMgb25seSk6IDIg
YWJvcnRzIGluIDQwIGN5Y2xlcywgb24gQ1BVMSBhbmQgQ1BVMC4KQWxsIGZvdXIgYXJlIHN5bmNo
cm9ub3VzIChFU1IgMHg5NjAwMDIxMCkgaW4gcm9ja2NoaXBfcGNpZV9yZF9jb25mKCksCmZyb20g
cGNpX3Bvd2VyX3VwKCkgaW4gcGNpX3BtX3Jlc3VtZV9ub2lycSgpLiBUaGUgaG9vayBjYXVnaHQg
bm8gU0Vycm9yCmluIDgwIGN5Y2xlcywgYW5kIG5vIGFib3J0IGxhbmRlZCBvbiBhbiBBNzIuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
