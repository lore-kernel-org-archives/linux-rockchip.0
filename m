Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54ACFFA0C3C
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Apr 2026 07:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c7kftjKG0AfZFsKqqcvaHMQgVwvCWCKqDtY7gjvSumA=; b=N6/rX8CSfDhssn
	qXSYKyhTqz08PFMGaEcIkZOd5fNhzz3Q01NUhGNuTxK0Xx/e+p7qDY2zCbg64kXZv+LrQ1zFVsNEU
	2dDugAe+krCDBqtzOaa4fHskTQcs/BdhgPNszWcnMH4HO5LQkDzuCKoNTciHANejfy0gIVo3M31UR
	+n5mtUJwbe7d4tGVZMh+G163Gfr/g9BDyG1xEFFFniD5D34PLd26m8TvqnBDVifujx8Kf5Ef4zHoc
	MrN8Wswc+6k3SA7fxixKstDmL3dgu7s7FKSuXE9AVVuCl/Q8CqkYPgoEKDkvzXja+udMeAYHt4hZK
	RzREARVn8ShKkQpx7IcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCubR-00000000iYR-12b6;
	Wed, 15 Apr 2026 07:24:01 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCubO-00000000iX7-0lXO;
	Wed, 15 Apr 2026 07:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776237835;
	bh=eRo0+yo2ngViAuu3brKHy0pNsCzdGRzaTCVPZgYzQas=;
	h=From:To:Cc:Subject:Date:From;
	b=BzYMpl5uKa165kt3aF5stFxo0UVLEHO8DhDP91xqtKCnaYPLoCsEgE0+k8bSN6rlT
	 mbOiLBmrV2T3/0exac42/PcEHGq86SeWjebaECc0ftugy58MTiIy1Pr3i8KYr+9zmr
	 g8s8jhT1xPqiCy+MXNwE/WmRYRmoxJXRnEPlPMGvhC6OUIdNRfrfnz6f7bdPMOuJyF
	 vRC3QCGx84TL0Ij3DYyInMpRKV8KeSjZ7l+HRYmq3TNauBJPpE+ko32s0lkhFPVP+D
	 PpkwmHBihwif05WfVOS8CKEga6DmHsf7VDRaMB9cneBAe4jbU3MOjhXa7PEnFEFNLC
	 iE+WOCPKKZVGQ==
Received: from benjamin-XPS-13-9310.. (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B967617E131B;
	Wed, 15 Apr 2026 09:23:54 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v14 0/5] Add support for Verisilicon IOMMU used by media codec blocks
Date: Wed, 15 Apr 2026 09:23:36 +0200
Message-ID: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_002358_368485_014D91E5 
X-CRM114-Status: GOOD (  17.95  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgYWxsLAoKVGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgVmVyaXNpbGlj
b24gSU9NTVUsIHdoaWNoIGlzIGZvdW5kIGluIGZyb250Cm9mIGhhcmR3YXJlIGVuY29kZXIgYW5k
IGRlY29kZXIgYmxvY2tzIGluIHNldmVyYWwgU29DcyB1c2luZyBWZXJpc2lsaWNvbiBJUC4gCkEg
Zmlyc3QgaW1wbGVtZW50YXRpb24gb2YgdGhpcyBJT01NVSBpcyBhdmFpbGFibGUgb24gdGhlIFJv
Y2tjaGlwIFJLMzU4OCBTb0MuCgpSb2NrY2hpcCBwcm92aWRlcyBhIGRyaXZlciBmb3IgdGhpcyBo
YXJkd2FyZSBpbiB0aGVpciA2LjEga2VybmVsIGJyYW5jaDoKaHR0cHM6Ly9naXRodWIuY29tL3Jv
Y2tjaGlwLWxpbnV4L2tlcm5lbC9ibG9iL2RldmVsb3AtNi4xL2RyaXZlcnMvaW9tbXUvcm9ja2No
aXAtaW9tbXUtYXYxZC5jCgpUaGlzIHNlcmllcyBpbmNsdWRlczoKLSBhIG5ldyBiaW5kaW5nIGZv
ciB0aGUgVmVyaXNpbGljb24gSU9NTVUKLSBhIGRyaXZlciBpbXBsZW1lbnRhdGlvbgotIERUIHVw
ZGF0ZXMgZm9yIFJLMzU4OAoKVGhlIGRyaXZlciB3YXMgZm9yd2FyZC1wb3J0ZWQgZnJvbSBSb2Nr
Y2hpcOKAmXMgNi4xIGltcGxlbWVudGF0aW9uLCAKdGhlIHByZWZpeCB3YXMgcmVuYW1lZCB0byB2
c2kgZm9yIGdlbmVyYWxpdHksIGFuZCBzZXZlcmFsIGZpeGVzIHdlcmUKYXBwbGllZC4KCkFWMSBk
ZWNvZGluZyB3YXMgdGVzdGVkIHVzaW5nIHRoZSBzdGF0ZWxlc3MgVlBVIGRyaXZlciBhbmQgRmx1
c3Rlci4KVGhlIHRlc3QgcmVzdWx0cyBzaG93IGEgc2NvcmUgb2YgMjA1LzIzOSwgd2hpY2ggY29u
ZmlybXMgdGhhdCBubwpyZWdyZXNzaW9ucyB3ZXJlIGludHJvZHVjZWQgYnkgdGhpcyBzZXJpZXMu
CgpGZWVkYmFjayBhbmQgdGVzdGluZyB3ZWxjb21lLgoKY2hhbmdlcyBpbiB2ZXJzaW9uIDE0Ogog
LSBGbHVzaCBUTEIgYWZ0ZXIgZWFjaCBtYXAvdW5tYXAgb3BlcmF0aW9ucy4KIC0gUmVtb3ZlIHZz
aV9pb21tdV9yZXN0b3JlX2N0eCgpIGFuZCBkbyBub3QgdG91Y2ggVmVyaXNpbGljb24gc3RhdGVs
ZXNzCiAgIHZpZGVvIGRlY29kZXIuCiAtIEFsbG93IHRvIGJ1aWxkIHRoZSBkcml2ZXIgYXMgYSBt
b2R1bGUuCgpjaGFuZ2VzIGluIHZlcnNpb24gMTM6CiAtIE9uIHRvcCB0aGUgZHJpdmVyIGZpbGUg
ZXhwbGljaXQgd2h5IHRoZSBoYXJkd2FyZSBpcyBkaWZmZXJlbnQgdGhhbiBSb2NrY2hpcCBJT01N
VQogLSBEb2N1bWVudCB3aHkgdnNpX2lvbW11X3Jlc3RvcmVfY3R4KCkgaXMgbmVlZGVkIHdoZW4g
dXNpbmcgVmVyaXNpbGljb24KICAgc3RhdGVsZXNzIHZpZGVvIGRlY29kZXIuCgpjaGFuZ2VzIGlu
IHZlcnNpb24gMTI6Ci0gUmVtb3ZlIHVzZWxlc3MgdnNpX2lvbW11X2ZsdXNoX3RsYl9hbGwoKQot
IE1lcmdlIE1BSU5UQUlORVJTIGNoYW5nZXMgaW4gdGhlIHBhdGNoIGludHJvZHVjaW5nIFZTSSBp
b21tdSBkcml2ZXIKCgpCZW5qYW1pbiBHYWlnbmFyZCAoNSk6CiAgZHQtYmluZGluZ3M6IHZlbmRv
ci1wcmVmaXhlczogQWRkIFZlcmlzaWxpY29uCiAgZHQtYmluZGluZ3M6IGlvbW11OiB2ZXJpc2ls
aWNvbjogQWRkIGJpbmRpbmcgZm9yIFZTSSBJT01NVQogIGlvbW11OiBBZGQgdmVyaXNpbGljb24g
SU9NTVUgZHJpdmVyCiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCB2ZXJpc2lsaWNvbiBJT01N
VSBub2RlIG9uIFJLMzU4OAogIGFybTY0OiBkZWZjb25maWc6IGVuYWJsZSBWZXJpc2lsaWNvbiBJ
T01NVSBmb3IgUm9ja2NoaXAgUkszNTg4CgogLi4uL2JpbmRpbmdzL2lvbW11L3ZlcmlzaWxpY29u
LGlvbW11LnlhbWwgICAgIHwgIDcxICsrCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3It
cHJlZml4ZXMueWFtbCAgfCAgIDIgKwogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICA4ICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LWJhc2UuZHRzaSB8ICAxMSArCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAg
ICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9pb21tdS9LY29uZmlnICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDExICsKIGRyaXZlcnMvaW9tbXUvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgMSArCiBkcml2ZXJzL2lvbW11L3ZzaS1pb21tdS5jICAgICAgICAgICAgICAgICAg
ICAgfCA3OTYgKysrKysrKysrKysrKysrKysrCiA4IGZpbGVzIGNoYW5nZWQsIDkwMSBpbnNlcnRp
b25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2lvbW11L3ZlcmlzaWxpY29uLGlvbW11LnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2lvbW11L3ZzaS1pb21tdS5jCgotLSAKMi40My4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
