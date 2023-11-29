Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17681C07CB1
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLoRqSyy7wu9vfqsjZZcOMyuZrKqZ3O4MiZPggmtFKU=; b=m9Ecl3PRxGDn54
	KEg9pA0OdgMiVAEpsPDPpCXi1lC83VhTKUaLlo3bXzWcINMb9LW/m1TfzcArHRE+ChJ3pn0AWbJoA
	exIht2U5YgSGS9M5Mh6XyfudBdBiG0GejnImSzWSGDoCcWXiXj7xD1N5tRezHYYyrxqJlcLbeXqq1
	bbXttLjIpOvgfkPkqBCkThbpGc3PreHSkgzvhTiICuHEA9lTOKsPoJe9p/SBBeXGHgsFQIldI7Ig3
	nXb4B3IuL4aFhKHsYfkW58YdGYGtJAg7HBhk9Rfbi6MubQ4gapa94GP0kWRNnoZBW3AV+gTCOcA5i
	OcYTeMFOb3BpJvPtvGRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JXf-008HrQ-0w;
	Wed, 29 Nov 2023 12:19:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JXd-008Hox-0v;
	Wed, 29 Nov 2023 12:19:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=4ID1zdoJK08jI0+ney0GGZgpZp/Ze4ASBpaugIzPl/M=; b=ACx1O47qmYjOZq1QBrkSrE9h4G
	KV4jdzULAF3/7qAbqSuo7FVr79LawFN5jHPbrZ3BuNV0y78lKn3I7fUTkRC1wZTmfTVqTOb6mxlWS
	qZWEc6n438FKVIL7RrCeSOI+OZWAvY5kDG2YzEDBVhFUUr0/hCzGO+TwuEV+mSU19KfcD8+i7BT8M
	nSHCx6EJhS6Oidxb5xDTuXMfj124HlOR+mq/x9N6oQuQUHLFx+M8kfIYQ+jzWHggstvk6uRvvDvjo
	DfgufX/6TOgZqQnG1cGl8SQeViKqWuOkB2kVRqDIb9Srz9VWw8jbuBpMM++dKThNii5+2SuQ3mrkC
	2H59OMFQ==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JXP-000LS6-2P;
	Wed, 29 Nov 2023 12:19:39 +0000
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D7655660732A;
	Wed, 29 Nov 2023 12:19:22 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701260366;
	bh=drt9Nf1tdYoCGDZuOe/qO8JK0dZNg1Oz/Fl7Gto/UZI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ri4WVuOtDg/bxRqtZJK8ogTvFXmvqnAP/JkoBlpF7lpuxfbIcwi9JLLzT7/HsFcPi
	 vSiObrgMAuKWp18v1JfnlkIRp1SFiIeH0RfeR3Oqn6A7XPLfMYcgCancb59Sl48mO7
	 3iUWHc2aTCo6SkG7TLpoZA+HeK3Sdeycrbahud1QkfmNVJCOf+hStJjI3JCOW5O5vB
	 L/AmHhz7RjKzXRXHLwd1TExZG7Wsv28bU6a6AJgLxWjgLfz00z1evdPtI+zcUl/RER
	 SmbMTcWhhWSo1Ju8VFc7PDloT3RjUltMAr7NuO9ws4UzWbahB/37Udy7UVh+A0EEAn
	 2ycI9vcIHP+3g==
From: Vignesh Raman <vignesh.raman@collabora.com>
To: helen.koike@collabora.com,
	airlied@gmail.com,
	daniel@ffwll.ch
Cc: david.heidelberg@collabora.com,
	sergi.blanch.torne@collabora.com,
	guilherme.gallo@collabora.com,
	daniels@collabora.com,
	gustavo.padovan@collabora.com,
	emma@anholt.net,
	robdclark@gmail.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	virtualization@lists.linux-foundation.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v6 08/10] drm: ci: uprev IGT
Date: Wed, 29 Nov 2023 17:48:39 +0530
Message-Id: <20231129121841.253223-9-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231129121841.253223-1-vignesh.raman@collabora.com>
References: <20231129121841.253223-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_121933_560587_CA42AA60 
X-CRM114-Status: GOOD (  11.26  )
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

dmlydGlvLWdwdSBrZXJuZWwgZHJpdmVyIHJlcG9ydHMgMTYgZm9yIGNvdW50X2NydGNzCndoaWNo
IGV4Y2VlZHMgSUdUX01BWF9QSVBFUyBzZXQgdG8gOCBpbiBpZ3QtZ3B1LXRvb2xzLgpUaGlzIHJl
c3VsdHMgaW4gYmVsb3cgbWVtb3J5IGNvcnJ1cHRpb24sCgrCoG1hbGxvYygpOiBjb3JydXB0ZWQg
dG9wIHNpemUKwqBSZWNlaXZlZCBzaWduYWwgU0lHQUJSVC4KwqBTdGFjayB0cmFjZToKwqAgIzAg
W2ZhdGFsX3NpZ19oYW5kbGVyKzB4MTdiXQrCoCAjMSBbX19zaWdhY3Rpb24rMHg0MF0KwqAgIzIg
W3B0aHJlYWRfa2V5X2RlbGV0ZSsweDE0Y10KwqAgIzMgW2dzaWduYWwrMHgxMl0KwqAgIzQgW2Fi
b3J0KzB4ZDNdCsKgICM1IFtfX2ZzZXRsb2NraW5nKzB4MjkwXQrCoCAjNiBbdGltZXJfc2V0dGlt
ZSsweDM3YV0KwqAgIzcgW19fZGVmYXVsdF9tb3JlY29yZSsweDFmMWJdCsKgICM4IFtfX2xpYmNf
Y2FsbG9jKzB4MTYxXQrCoCAjOSBbZHJtTW9kZUdldFBsYW5lUmVzb3VyY2VzKzB4NDRdCsKgICMx
MCBbaWd0X2Rpc3BsYXlfcmVxdWlyZSsweDE5NF0KwqAgIzExIFtfX2lndF91bmlxdWVfX19fcmVh
bF9tYWluMTM1NisweDkzY10KwqAgIzEyIFttYWluKzB4M2ZdCsKgICMxMyBbX19saWJjX2luaXRf
Zmlyc3QrMHg4YV0KwqAgIzE0IFtfX2xpYmNfc3RhcnRfbWFpbisweDg1XQrCoCAjMTUgW19zdGFy
dCsweDIxXQrCoApUaGlzIGlzIGZpeGVkIGluIGlndC1ncHUtdG9vbHMgYnkgaW5jcmVhc2luZyBJ
R1RfTUFYX1BJUEVTIHRvIDE2LiDCoApodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzEyNjMyNy8KwqAKVXByZXYgSUdUIHRvIGluY2x1ZGUgdGhlIHBhdGNoZXMgd2hpY2gg
Zml4ZXMgdGhpcyBpc3N1ZS4KClNpZ25lZC1vZmYtYnk6IFZpZ25lc2ggUmFtYW4gPHZpZ25lc2gu
cmFtYW5AY29sbGFib3JhLmNvbT4KLS0tCgp2NjoKICAtIEFkZGVkIGEgbmV3IHBhdGNoIGluIHRo
ZSBzZXJpZXMgdG8gdXByZXYgSUdUIHRvIGZpeCBtZW1vcnkgY29ycnVwdGlvbgoKLS0tCiBkcml2
ZXJzL2dwdS9kcm0vY2kvZ2l0bGFiLWNpLnltbCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9j
aS9naXRsYWItY2kueW1sIGIvZHJpdmVycy9ncHUvZHJtL2NpL2dpdGxhYi1jaS55bWwKaW5kZXgg
YWViOWJhYjFiMDY5Li5kYWM5MmNjMjc3N2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9j
aS9naXRsYWItY2kueW1sCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9jaS9naXRsYWItY2kueW1sCkBA
IC01LDcgKzUsNyBAQCB2YXJpYWJsZXM6CiAgIFVQU1RSRUFNX1JFUE86IGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0KICAgVEFSR0VUX0JSQU5DSDogZHJtLW5leHQKIAotICBJ
R1RfVkVSU0lPTjogZDFkYjczMzNkOWM1ZmJiYjA1ZTUwYjA4MDQxMjM5NTBkOWRjMWM0NgorICBJ
R1RfVkVSU0lPTjogZDJhZjEzZDlmNWJlNWNlMjNkOTk2ZTRhZmQzZTQ1OTkwZjVhYjk3NwogCiAg
IERFUVBfUlVOTkVSX0dJVF9VUkw6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9hbmhv
bHQvZGVxcC1ydW5uZXIuZ2l0CiAgIERFUVBfUlVOTkVSX0dJVF9UQUc6IHYwLjE1LjAKLS0gCjIu
NDAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
