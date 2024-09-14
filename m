Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C0B1C021AC
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 19:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v4ixClKP/FFxjZxNn1kYSHCqbFKaaUOKfvKQiO++Pn0=; b=0YIER50NlJsd/0
	8FyUbs0sdmdPx+ca06Vco/JFjQuOzakv0co66KHtcyVHlwj7E/CAKdqtpjlPerVJHfKyyXSO6Uq7/
	cjGs5w42oXj/fylRdb/p39riD8x4ek/da2Yogn7LsVkpRCi3wNUVYF3xyLXPW17WjvmlRpdR+5cDV
	mkmJ1xmyYHPifaQoiTLIskeNAT6YAJ5JwpLIUQ4DrDnuSaTAWW78h5WgVnsF+sw8vCRInQnKCx7TL
	Z2TY20EUsThxLARgBth5ZePpGXr2Qxmn2p2QeBWQXrvpzsOClFWUWhR6LDHWLEwK0QDxo1vwhWjY7
	ylPvg+RHiPvh+pWnY5tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spYSG-00000001A9h-3HF3;
	Sat, 14 Sep 2024 19:29:12 +0000
Received: from mail.clii.com.cn ([218.247.4.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spYSC-00000001A9A-1PaX
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Sep 2024 19:29:11 +0000
Received: from cnlic.org.cn (unknown [41.138.91.161])
	by mail.clii.com.cn (Server) with ESMTPSA id 4X5h7F0sdbz8Nkl
	for <linux-rockchip@lists.infradead.org>; Sun, 15 Sep 2024 03:28:56 +0800 (HKT)
From: Martina Mariana SCHULT <cace@cnlic.org.cn>
To: linux-rockchip@lists.infradead.org
Subject: Guten Morgen
Date: 14 Sep 2024 20:28:44 +0100
Message-ID: <20240914202844.61770438152C6BCA@cnlic.org.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_122908_556403_97B18E78 
X-CRM114-Status: UNSURE (  -1.78  )
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
Reply-To: marianasch@gmx.fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

R3V0ZW4gTW9yZ2VuLAoKRXMgdHV0IG1pciBsZWlkLCBkYXNzIGljaCBTaWUgc28ga29udGFrdGll
cnQgaGFiZS4gSWNoIGhhYmUgCmdlcmFkZSBJaHJlIEFkcmVzc2UgdW5kIElociBQcm9maWwgZ2Vz
ZWhlbiB1bmQgZGFjaHRlLCBTaWUgd8OkcmVuIApkaWUgUGVyc29uLCBkaWUgaWNoIGJyYXVjaGUu
Ck1laW4gTmFtZSBpc3QgTWFydGluYSBNYXJpYW5hIFNDSFVMVCwgZGV1dHNjaGVyIEhlcmt1bmZ0
LiBJY2ggCmxlaWRlIGFuIGVpbmVyIHNjaHdlcmVuIEtyYW5raGVpdCwgZGllIG1pY2ggenVtIHNp
Y2hlcmVuIFRvZCAKdmVydXJ0ZWlsdDogSGlybnR1bW9yLgpJY2ggdmVyZsO8Z2Ugw7xiZXIgZWlu
ZW4gQmV0cmFnIHZvbiB6d8O2bGYgTWlsbGlvbmVuIApkcmVpaHVuZGVydHRhdXNlbmQgRXVybyAo
MTIuMzAwLjAwMCBFdXJvKSwgZGVuIGljaCBlaW5lbSAKenV2ZXJsw6Rzc2lnZW4gdW5kIGVocmxp
Y2hlbiBEcml0dGVuIHp1ciBvcmRudW5nc2dlbcOkw59lbiAKVmVyd2VuZHVuZyDDvGJlcmdlYmVu
IG3DtmNodGUuIEljaCBoYWJlIGVpbmUgRmlybWEsIGRpZSByb3RlcyDDlmwgCm5hY2ggRnJhbmty
ZWljaCB1bmQgaW4gYW5kZXJlIEzDpG5kZXIgaW1wb3J0aWVydC4gSWNoIGhhYmUgbWVpbmVuIApN
YW5uIHVuZCB6d2VpIGVudHrDvGNrZW5kZSBLaW5kZXIgdm9yIDEwIEphaHJlbiBiZWkgZWluZW0g
CnVuZ2zDvGNrbGljaGVuIEF1dG91bmZhbGwgdmVybG9yZW4uIERpZXNlbiBCZXRyYWcgbcO2Y2h0
ZSBpY2ggdm9yIAptZWluZW0gVG9kIHNwZW5kZW4sIGRlbm4gbWVpbmUgVGFnZSBzaW5kIGdlesOk
aGx0LiBVbSBkaWVzZSBTcGVuZGUgCmJlc3NlciB1bmQgc2NobmVsbGVyIHp1IGVyaGFsdGVuLCBz
ZW5kZW4gU2llIGJpdHRlIGVpbmUgRS1NYWlsIGFuIApkaWUgZm9sZ2VuZGUgQWRyZXNzZTogbm90
YWlyZWx1Y3ZvZ2VsQG91dGxvb2suY29tICwKbm90YWlyZWx1Y3ZvZ2VsQGdtYWlsLmNvbQoKRGVy
IE5vdGFyIFBpZXJyZS1MdWMgVk9HRUwgaXN0IG1laW4gVmVybcO2Z2Vuc3ZlcndhbHRlciwgZXIg
aGlsZnQgCklobmVuIGJlaSBkZXIgw5xiZXJ3ZWlzdW5nIGRpZXNlciBTY2hlbmt1bmcuCgpub3Rh
aXJlbHVjdm9nZWxAb3V0bG9vay5jb20KCm5vdGFpcmVsdWN2b2dlbEBnbWFpbC5jb20KCk3Dtmdl
IGRlciBIZXJyIFNpZSBzZWduZW4uCk1hcnRpbmEgTWFyaWFuYSBTQ0hVTFQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
