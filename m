Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88557C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 11:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nZ2gXhE5U9bM/N0/+aLrMi++400RHzp4peyu0EBIl2U=; b=T2OOMcFfyWFp5g
	9TY8MBd/oJUyBlYbXrocpylBqFahm3WUeLQWpvvTyQWOYalfB70m86r2W9XkrLOg2Dd6PaYuytR5i
	Wf5Zk1YeRACZ5Da2rdP/RqnlbJ7zep3Th9Vhqna0uQhroSwH2lZjx1NWsicCOiZHuIsGNfnytQMjG
	RtGboGtFS8l8FYmsfz4D9oxunbwK7aXPsSPSteIIkUaXBKU4qA9QfPb1iykokMDpjyMnat+/NMQ47
	VOZv8DL6b2jpIHrB3ydQeg4mmkHl9IcDJIJCHVljhlSrxEuLTQlFHv5wZjSKs36qW+drNgpto4PSK
	V8szm0uPuehYmKMO4cCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1revUb-00000004v43-39QE;
	Tue, 27 Feb 2024 11:19:25 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1revUY-00000004v37-2CJV;
	Tue, 27 Feb 2024 11:19:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=u0E2Diup0AiiVMnnreZGh7XxC7/vc7JDGyBFgrh4bLE=; b=Du
	jlSMdt/csM2FIIOZ1AS0n0P83As7aMdCWOJDjmcrIPqgtls2EuAIK82ShyD0YrcEMMV0y+eCXH304
	XTaI6pWoBHkLI8UxcAmUJKYoqj47O99ek4DOeObVnmY2Hi+pQllVh26StMO4oqrUVvahhyGTRedlO
	etXa7iqGxm+Zt15NDVgRZ0ZrSd9uDQsHb8fGjkvxILNVul4p/HAtB88s4a8ME3WDTVDKMRTwMl3Hs
	AvL9eq1q/vm64lmkCcBPxHeBs/oMbUufb6UF4aclAvqkSFGsCPUWI7rx/vHk+SOjRdtxjEjKZ/uXy
	vES0PJWlqPXNuYrgIggl5A071H4A7mnQ==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1revU5-005dFm-EL; Tue, 27 Feb 2024 11:18:53 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Lei Chuanhua <lchuanhua@maxlinear.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Damien Le Moal <dlemoal@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] PCI: dw-rockchip: Add error messages in .probe()s error paths
Date: Tue, 27 Feb 2024 12:18:35 +0100
Message-ID: <20240227111837.395422-2-ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2503; i=ukleinek@debian.org; h=from:subject; bh=S9/+LCdR6jnIUOPSc20FoU3XYkHo/paVrIUASEIKU+w=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl3cUO3qnSxDO51sVKwCI6WeHaZXuaDt0oaGYFH AP8pZoKluCJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZd3FDgAKCRCPgPtYfRL+ TpAOB/9Or1GBTlt/LmDI3zIRKVEm+fzI/Ak/c4hElCMqqpxElSkjIdgVrX9Q7wVoMgpqcoKrqCn +ENT4zaE1WtEsts6EhE2NsI1g4dzT8vdDQ3+zOSA/Q1mhQJh8RtBAD5IeZyRXIMPeDj3b1d8mMc tD68hrGU+/C4kyap3lil5NMgGgvcwBabDrXWmE3LSSo30x5JaIoF/0io/vqt2Z6mqZ8EzzfWO2P ErXpSJK1kQYODWlFTbsbUxhZ2u4DlTqR3VCeKuSgOMSRjCE4MbCnRsCehX0TmQnaOsOzZxzlHxh 58dIJQdt8balEQlp3Zu1DZGd71McdGBGyPleT1FX3yTGcT+O
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_031922_596001_7DBCC1A1 
X-CRM114-Status: GOOD (  12.51  )
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

RHJpdmVycyB0aGF0IHNpbGVudGx5IGZhaWwgdG8gcHJvYmUgcHJvdmlkZSBhIGJhZCB1c2VyIGV4
cGVyaWVuY2UgYW5kCm1ha2UgaXQgdW5uZWNlc3NhcmlseSBoYXJkIHRvIGRlYnVnIHN1Y2ggYSBm
YWlsdXJlLiBGaXggaXQgYnkgdXNpbmcKZGV2X2Vycl9wcm9iZSgpIGluc3RlYWQgb2YgYSBwbGFp
biByZXR1cm4uCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dWtsZWluZWtAZGVi
aWFuLm9yZz4KLS0tCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlw
LmMgfCAyMyArKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9u
cygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LWR3LXJvY2tjaGlwLmMKaW5kZXggZDY4NDIxNDFkMzg0Li40YzE2ZDhkMmUxNzggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYworKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKQEAgLTIyNSwxMSAr
MjI1LDE3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9jbGtfaW5pdChzdHJ1Y3Qgcm9ja2No
aXBfcGNpZSAqcm9ja2NoaXApCiAKIAlyZXQgPSBkZXZtX2Nsa19idWxrX2dldF9hbGwoZGV2LCAm
cm9ja2NoaXAtPmNsa3MpOwogCWlmIChyZXQgPCAwKQotCQlyZXR1cm4gcmV0OworCQlyZXR1cm4g
ZGV2X2Vycl9wcm9iZShyb2NrY2hpcC0+cGNpLmRldiwgcmV0LAorCQkJCSAgICAgImZhaWxlZCB0
byBnZXQgY2xvY2tzXG4iKTsKIAogCXJvY2tjaGlwLT5jbGtfY250ID0gcmV0OwogCi0JcmV0dXJu
IGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKHJvY2tjaGlwLT5jbGtfY250LCByb2NrY2hpcC0+Y2xr
cyk7CisJcmV0ID0gY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUocm9ja2NoaXAtPmNsa19jbnQsIHJv
Y2tjaGlwLT5jbGtzKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShyb2NrY2hp
cC0+cGNpLmRldiwgcmV0LAorCQkJCSAgICAgImZhaWxlZCB0byBlbmFibGUgY2xvY2tzXG4iKTsK
KworCXJldHVybiAwOwogfQogCiBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcmVzb3VyY2VfZ2V0
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCkBAIC0yMzcsMTIgKzI0MywxNCBAQCBzdGF0
aWMgaW50IHJvY2tjaGlwX3BjaWVfcmVzb3VyY2VfZ2V0KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYsCiB7CiAJcm9ja2NoaXAtPmFwYl9iYXNlID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jl
c291cmNlX2J5bmFtZShwZGV2LCAiYXBiIik7CiAJaWYgKElTX0VSUihyb2NrY2hpcC0+YXBiX2Jh
c2UpKQotCQlyZXR1cm4gUFRSX0VSUihyb2NrY2hpcC0+YXBiX2Jhc2UpOworCQlyZXR1cm4gZGV2
X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJSKHJvY2tjaGlwLT5hcGJfYmFzZSksCisJCQkJ
ICAgICAiZmFpbGVkIHRvIG1hcCBhcGIgcmVnaXN0ZXJzXG4iKTsKIAogCXJvY2tjaGlwLT5yc3Rf
Z3BpbyA9IGRldm1fZ3Bpb2RfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJyZXNldCIsCiAJCQkJ
CQkgICAgIEdQSU9EX09VVF9ISUdIKTsKIAlpZiAoSVNfRVJSKHJvY2tjaGlwLT5yc3RfZ3Bpbykp
Ci0JCXJldHVybiBQVFJfRVJSKHJvY2tjaGlwLT5yc3RfZ3Bpbyk7CisJCXJldHVybiBkZXZfZXJy
X3Byb2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIocm9ja2NoaXAtPnJzdF9ncGlvKSwKKwkJCQkgICAg
ICJmYWlsZWQgdG8gZ2V0IHJlc2V0IGdwaW9cbiIpOwogCiAJcm9ja2NoaXAtPnJzdCA9IGRldm1f
cmVzZXRfY29udHJvbF9hcnJheV9nZXRfZXhjbHVzaXZlKCZwZGV2LT5kZXYpOwogCWlmIChJU19F
UlIocm9ja2NoaXAtPnJzdCkpCkBAIC0zMjAsMTAgKzMyOCw5IEBAIHN0YXRpYyBpbnQgcm9ja2No
aXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlyb2NrY2hpcC0+
dnBjaWUzdjMgPSBOVUxMOwogCX0gZWxzZSB7CiAJCXJldCA9IHJlZ3VsYXRvcl9lbmFibGUocm9j
a2NoaXAtPnZwY2llM3YzKTsKLQkJaWYgKHJldCkgewotCQkJZGV2X2VycihkZXYsICJmYWlsZWQg
dG8gZW5hYmxlIHZwY2llM3YzIHJlZ3VsYXRvclxuIik7Ci0JCQlyZXR1cm4gcmV0OwotCQl9CisJ
CWlmIChyZXQpCisJCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIHJldCwKKwkJCQkJICAgICAi
ZmFpbGVkIHRvIGVuYWJsZSB2cGNpZTN2MyByZWd1bGF0b3JcbiIpOwogCX0KIAogCXJldCA9IHJv
Y2tjaGlwX3BjaWVfcGh5X2luaXQocm9ja2NoaXApOwoKYmFzZS1jb21taXQ6IDY2MTM0NzZlMjI1
ZTA5MGNjOWFhZDQ5YmU3ZmE1MDRlMjkwZGQzM2QKLS0gCjIuNDMuMAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
