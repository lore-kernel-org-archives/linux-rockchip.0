Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB0A9C021A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Feb 2025 15:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNHrYl5b9cUMD0f77FBaNFguaRJ1YfRuTAr7qP6on44=; b=K3fYzDa+Nez015
	/sRH48wiEaLi+uyrm4GPfIb2R5tFmUemh372YSBm+etj9IZXNw0mTNQlLG9jLIHFeHwGYESwRpWx3
	Ds0GipylXs0dvNxg7KN3NGBcT0/yG1kGbrfem+RZpCgNCSUZC8BBeeunRnC/XgUwch9mW1zNJM0N3
	cAxdUFDBtZbGm8OvkJkoyyxHBOlgEy6UcEiur6gy8nBI5ThhC0M6BbtVKt6irmoyM0TJ7pd3j77mE
	cVPknSQka1QIJ05Yjm8BZdKJ6MiAqcqPTiyT5Siwh7X4Bk1V07WN/RW68LOEoCt7iuSMUZAP/fvJ0
	AvdpZ9ObZijxcma6vI2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tib8k-0000000BXB1-3fZ5;
	Thu, 13 Feb 2025 15:28:34 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tib6S-0000000BWgW-4Biz;
	Thu, 13 Feb 2025 15:26:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 00142A4253D;
	Thu, 13 Feb 2025 15:24:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FDB7C4CEE4;
	Thu, 13 Feb 2025 15:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1739460372;
	bh=uSCLKXuUFkv8xNfCz6j+uSy/iCvKrKUs3L7ibwEF+fI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=c+8aK0F6DeUXphO+tciKBjQMtXvWPyiYnPZ2a+qpsV/LPQ3qFGLBC0ui6S0Mn9PaS
	 eGHhcRQXDzbu0aRY4AMaVZJ2SPI+HvBk8ocVI8m6G9bLjrs/oXkgKYOdCEA9CPSco9
	 PfrM0KEhknlo/DNC0kVbhONz7YyfJOctACqILkTE=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	patches@lists.linux.dev,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Guenter Roeck <groeck@chromium.org>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 6.6 092/273] drm/rockchip: cdn-dp: Use drm_connector_helper_hpd_irq_event()
Date: Thu, 13 Feb 2025 15:27:44 +0100
Message-ID: <20250213142410.977858295@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250213142407.354217048@linuxfoundation.org>
References: <20250213142407.354217048@linuxfoundation.org>
User-Agent: quilt/0.68
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_072613_159255_C176B81B 
X-CRM114-Status: GOOD (  13.94  )
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

Ni42LXN0YWJsZSByZXZpZXcgcGF0Y2guICBJZiBhbnlvbmUgaGFzIGFueSBvYmplY3Rpb25zLCBw
bGVhc2UgbGV0IG1lIGtub3cuCgotLS0tLS0tLS0tLS0tLS0tLS0KCkZyb206IFRob21hcyBaaW1t
ZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgoKY29tbWl0IDY2NmUxOTYwNDY0MTQwY2M0YmM5
MjAzYzIwMzA5N2U3MGI1NGM5NWEgdXBzdHJlYW0uCgpUaGUgY29kZSBmb3IgZGV0ZWN0aW5nIGFu
ZCB1cGRhdGluZyB0aGUgY29ubmVjdG9yIHN0YXR1cyBpbgpjZG5fZHBfcGRfZXZlbnRfd29yaygp
IGhhcyBhIG51bWJlciBvZiBwcm9ibGVtcy4KCi0gSXQgZG9lcyBub3QgYXF1aXJlIHRoZSBsb2Nr
cyB0byBjYWxsIHRoZSBkZXRlY3QgaGVscGVyIGFuZCB1cGRhdGUKdGhlIGNvbm5lY3RvciBzdGF0
dXMuIFRoZXNlIGFyZSBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgKYW5k
IHN0cnVjdCBkcm1fbW9kZV9jb25maWcubXV0ZXguCgotIEl0IGRvZXMgbm90IHVzZSBkcm1faGVs
cGVyX3Byb2JlX2RldGVjdCgpLCB3aGljaCBoZWxwcyB3aXRoIHRoZQpkZXRhaWxzIG9mIGxvY2tp
bmcgYW5kIGRldGVjdGlvbi4KCi0gSXQgdXNlcyB0aGUgY29ubmVjdG9yJ3Mgc3RhdHVzIGZpZWxk
IHRvIGRldGVybWluZSBhIGNoYW5nZSB0bwp0aGUgY29ubmVjdG9yIHN0YXR1cy4gVGhlIGVwb2No
X2NvdW50ZXIgZmllbGQgaXMgdGhlIGNvcnJlY3Qgb25lLiBUaGUKZmllbGQgc2lnbmFscyBhIGNo
YW5nZSBldmVuIGlmIHRoZSBjb25uZWN0b3Igc3RhdHVzJyB2YWx1ZSBkaWQgbm90CmNoYW5nZS4K
ClJlcGxhY2UgdGhlIGNvZGUgd2l0aCBhIGNhbGwgdG8gZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfaHBk
X2lycV9ldmVudCgpLAp3aGljaCBmaXhlcyBhbGwgdGhlc2UgcHJvYmxlbXMuCgpTaWduZWQtb2Zm
LWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KRml4ZXM6IDgxNjMy
ZGY2OTc3MiAoImRybS9yb2NrY2hpcDogY2RuLWRwOiBkbyBub3QgdXNlIGRybV9oZWxwZXJfaHBk
X2lycV9ldmVudCIpCkNjOiBDaHJpcyBaaG9uZyA8enl3QHJvY2stY2hpcHMuY29tPgpDYzogR3Vl
bnRlciBSb2VjayA8Z3JvZWNrQGNocm9taXVtLm9yZz4KQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9j
ay1jaGlwcy5jb20+CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBB
bmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+CkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6
IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IDxzdGFibGVAdmdlci5rZXJu
ZWwub3JnPiAjIHY0LjExKwpTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250
ZWNoLmRlPgpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNn
aWQvMjAyNDExMDUxMzM4NDguNDgwNDA3LTEtdHppbW1lcm1hbm5Ac3VzZS5kZQpTaWduZWQtb2Zm
LWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jIHwgICAgOSArLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgOCBkZWxldGlvbnMoLSkKCi0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCkBAIC05NDYsOSArOTQ2LDYgQEAgc3RhdGljIHZvaWQg
Y2RuX2RwX3BkX2V2ZW50X3dvcmsoc3RydWN0CiB7CiAJc3RydWN0IGNkbl9kcF9kZXZpY2UgKmRw
ID0gY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCBjZG5fZHBfZGV2aWNlLAogCQkJCQkJZXZlbnRf
d29yayk7Ci0Jc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9ICZkcC0+Y29ubmVjdG9y
OwotCWVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgb2xkX3N0YXR1czsKLQogCWludCByZXQ7CiAK
IAltdXRleF9sb2NrKCZkcC0+bG9jayk7CkBAIC0xMDEwLDExICsxMDA3LDcgQEAgc3RhdGljIHZv
aWQgY2RuX2RwX3BkX2V2ZW50X3dvcmsoc3RydWN0CiAKIG91dDoKIAltdXRleF91bmxvY2soJmRw
LT5sb2NrKTsKLQotCW9sZF9zdGF0dXMgPSBjb25uZWN0b3ItPnN0YXR1czsKLQljb25uZWN0b3It
PnN0YXR1cyA9IGNvbm5lY3Rvci0+ZnVuY3MtPmRldGVjdChjb25uZWN0b3IsIGZhbHNlKTsKLQlp
ZiAob2xkX3N0YXR1cyAhPSBjb25uZWN0b3ItPnN0YXR1cykKLQkJZHJtX2ttc19oZWxwZXJfaG90
cGx1Z19ldmVudChkcC0+ZHJtX2Rldik7CisJZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfaHBkX2lycV9l
dmVudCgmZHAtPmNvbm5lY3Rvcik7CiB9CiAKIHN0YXRpYyBpbnQgY2RuX2RwX3BkX2V2ZW50KHN0
cnVjdCBub3RpZmllcl9ibG9jayAqbmIsCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
