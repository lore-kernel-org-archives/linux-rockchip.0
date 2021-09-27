Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C18DC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 18:00:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 398E5604E9
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 18:00:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 398E5604E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YgcYqUbRFqaJEEJgCxUd+1bV8XU8aMvrtUqKLrHm6c=; b=sWzUi2kP+zd26v
	g7Cy7C3OfbqOEx3iXDZhH6HugVf0NnEBifrkjCyucMHWZ3oOBMjG2Vy/XGZtPdPO1v6rpZRhZFd9m
	1hlaK46hl7H9h/M8obapSLNq6tGkVNlvbgZIGCEn2y+UPpNQr9n0jiHs9+1f2GVk4ej7uc2bhjnqF
	cuKLcORFRnIWkrYxz9SDkG/pJ+BMc/WOhpbspp0Nz1uc87PNcWZJUl8bf4IGbPXLSKS3l0UY5Nzar
	ioQw2cjTh1/kCizf3IZmpd/0iogFVFBybl2+dAcbuN0gZDc9e9Pg3NETBwHgZGgxtn4nXN02vE/bV
	JmStXXd6YwbqJfjNUONw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUuva-003iA7-3B; Mon, 27 Sep 2021 18:00:34 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUuvV-003i4t-Vf
 for linux-rockchip@lists.infradead.org; Mon, 27 Sep 2021 18:00:32 +0000
Received: by mail-pf1-x42a.google.com with SMTP id g2so12484998pfc.6
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Sep 2021 11:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yXcjXLEUU3nildNYoxMEqnc4/GAMyWaGrIeKlsoekxA=;
 b=eO4zMx8OK7l/Fm2RzIja0dJMHLRaZVs+qdiiZALORr4ePn7i4YzxTulZJFJ7zcM3OI
 8AforHwrwN7yvarhMfLRs88sMEYRL3kJgwJXr41UcM2LJjtmaIKFmY1jR7W/tjrZx/UB
 hC2NGRNozfO8MeVjYXwzIR9mjAQDVfVRN0kNg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yXcjXLEUU3nildNYoxMEqnc4/GAMyWaGrIeKlsoekxA=;
 b=BhwA6tmpdmOY/GD6fQHflU61mpN9wI5G8djUDi35kAkZO0QvFeObtagMzHYlGR9wQA
 /4BF/nRpn2WVTN3Xvx4PXXlPwq+LchUs772ZrV6z8/inyR6mKe/GYJlHEkry6or+nZ4Y
 oGg8FLYLqQPEl6DpmDtAwvxCFqkv6Q20V42ehGda3pLadu1+/0ChPdrqeNFu1jQooOUT
 UwZm94Mr5GKSbbl62d+vRE/hQQ5PQ7eCFyOvC8PRDGDHQ8C5GMiskCMt0JjJsqeDtgNO
 W61x8kdXGJmBYpDXx+knRafKHwxUVFy+KLE1G8pYgqZMQHz19T36+VGaxAQOe8qtsVZJ
 jBYA==
X-Gm-Message-State: AOAM530aOU4NF2JEHtBPrPWs7h21qs7z+oHDW9BrzDvzSxkrq2hWkFEK
 PdI3wLWMcvGRTaLXcxXnu/RC/w==
X-Google-Smtp-Source: ABdhPJzM6DN9j/wrGa72mB8jLhaCKul3eWC8j2VmrO3BGILG46pb9iWJWPOeyJI5sfh/OVJ13Gl1hw==
X-Received: by 2002:a62:1409:0:b0:447:a1bf:9f44 with SMTP id
 9-20020a621409000000b00447a1bf9f44mr959209pfu.76.1632765621703; 
 Mon, 27 Sep 2021 11:00:21 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:82d7:f099:76bc:7017])
 by smtp.gmail.com with UTF8SMTPSA id w13sm116228pjc.29.2021.09.27.11.00.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Sep 2021 11:00:21 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: Thomas Hebb <tommyhebb@gmail.com>, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wenst@chromium.org>, linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, aleksandr.o.makarov@gmail.com,
 stable@vger.kernel.org,
 =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?=
 <nfraprado@collabora.com>
Subject: [PATCH v2 1/3] drm/rockchip: dsi: Hold pm-runtime across bind/unbind
Date: Mon, 27 Sep 2021 10:59:42 -0700
Message-Id: <20210927105928.v2.1.Ic2904d37f30013a7f3d8476203ad3733c186827e@changeid>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
In-Reply-To: <20210927175944.3381314-1-briannorris@chromium.org>
References: <20210927175944.3381314-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_110030_030957_92DB56E7 
X-CRM114-Status: GOOD (  20.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SW4gY29tbWl0IDQzYzJkZTEwMDJkMiwgd2UgbW92ZWQgbW9zdCBIVyBjb25maWd1cmF0aW9uIHRv
IGJpbmQoKSwgYnV0IHdlCmRpZG4ndCBtb3ZlIHRoZSBydW50aW1lIFBNIG1hbmFnZW1lbnQuIFRo
ZXJlZm9yZSwgZGVwZW5kaW5nIG9uIGluaXRpYWwKYm9vdCBzdGF0ZSwgcnVudGltZS1QTSB3b3Jr
cXVldWUgZGVsYXlzLCBhbmQgb3RoZXIgdGltaW5nIGZhY3RvcnMsIHdlCm1heSBkaXNhYmxlIG91
ciBwb3dlciBkb21haW4gaW4gYmV0d2VlbiB0aGUgaGFyZHdhcmUgY29uZmlndXJhdGlvbgooYmlu
ZCgpKSBhbmQgd2hlbiB3ZSBlbmFibGUgdGhlIGRpc3BsYXkuIFRoaXMgY2FuIGNhdXNlIHVzIHRv
IGxvc2UKaGFyZHdhcmUgc3RhdGUgYW5kIGZhaWwgdG8gY29uZmlndXJlIG91ciBkaXNwbGF5LiBG
b3IgZXhhbXBsZToKCiAgZHctbWlwaS1kc2ktcm9ja2NoaXAgZmY5NjgwMDAubWlwaTogZmFpbGVk
IHRvIHdyaXRlIGNvbW1hbmQgRklGTwogIHBhbmVsLWlubm9sdXgtcDA3OXpjYSBmZjk2MDAwMC5t
aXBpLjA6IGZhaWxlZCB0byB3cml0ZSBjb21tYW5kIDAKCm9yOgoKICBkdy1taXBpLWRzaS1yb2Nr
Y2hpcCBmZjk2ODAwMC5taXBpOiBmYWlsZWQgdG8gd3JpdGUgY29tbWFuZCBGSUZPCiAgcGFuZWwt
a2luZ2Rpc3BsYXkta2QwOTdkMDQgZmY5NjAwMDAubWlwaS4wOiBmYWlsZWQgd3JpdGUgaW5pdCBj
bWRzOiAtMTEwCgpXZSBzaG91bGQgbWF0Y2ggdGhlIHJ1bnRpbWUgUE0gdG8gdGhlIGxpZmV0aW1l
IG9mIHRoZSBiaW5kKCkvdW5iaW5kKCkKY3ljbGUuCgpUZXN0ZWQgb24gQWNlciBDaHJvbWV0YWIg
MTAgKFJLMzM5OSBHcnUtU2NhcmxldCksIHdpdGggcGFuZWwgZHJpdmVycwpidWlsdCBlaXRoZXIg
YXMgbW9kdWxlcyBvciBidWlsdC1pbi4KClNpZGUgbm90ZXM6IGl0IHNlZW1zIG9uZSBpcyBtb3Jl
IGxpa2VseSB0byBzZWUgdGhpcyBwcm9ibGVtIHdoZW4gdGhlCnBhbmVsIGRyaXZlciBpcyBidWls
dCBpbnRvIHRoZSBrZXJuZWwuIEkndmUgYWxzbyBzZWVuIHRoaXMgcHJvYmxlbQpiaXNlY3QgZG93
biB0byBjb21taXRzIHRoYXQgc2ltcGx5IGNoYW5nZWQgS2NvbmZpZyBkZXBlbmRlbmNpZXMsIGJl
Y2F1c2UKaXQgY2hhbmdlZCB0aGUgb3JkZXIgaW4gd2hpY2ggZHJpdmVyIGluaXQgZnVuY3Rpb25z
IHdlcmUgY29tcGlsZWQgaW50bwp0aGUga2VybmVsLCBhbmQgdGhlcmVmb3JlIHRoZSBvcmRlcmlu
ZyBhbmQgdGltaW5nIG9mIGJ1aWx0LWluIGRldmljZQpwcm9iZS4KCkZpeGVzOiA0M2MyZGUxMDAy
ZDIgKCJkcm0vcm9ja2NoaXA6IGRzaTogbW92ZSBhbGwgbGFuZSBjb25maWcgZXhjZXB0IExDREMg
bXV4IHRvIGJpbmQoKSIpCkxpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tj
aGlwLzlhZWRmYjUyODYwMGVjZjg3MTg4NWY3MjkzY2E0MjA3Yzg0ZDE2YzEuY2FtZWxAZ21haWwu
Y29tLwpSZXBvcnRlZC1ieTogPGFsZWtzYW5kci5vLm1ha2Fyb3ZAZ21haWwuY29tPgpDYzogPHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ClNpZ25lZC1vZmYtYnk6IEJyaWFuIE5vcnJpcyA8YnJpYW5u
b3JyaXNAY2hyb21pdW0ub3JnPgpUZXN0ZWQtYnk6IE7DrWNvbGFzIEYuIFIuIEEuIFByYWRvIDxu
ZnJhcHJhZG9AY29sbGFib3JhLmNvbT4KLS0tCgpDaGFuZ2VzIGluIHYyOgotIENsZWFuIHVwIHBt
LXJ1bnRpbWUgc3RhdGUgaW4gZXJyb3IgY2FzZXMuCi0gQ29ycmVjdCBnaXQgaGFzaCBmb3IgRml4
ZXMuCgogLi4uL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYyAgIHwgMzcg
KysrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDE4
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1t
aXBpLWRzaS1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNp
LXJvY2tjaGlwLmMKaW5kZXggYTIyNjJiZWU1YWE0Li40NTY3NmIyM2MwMTkgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jCkBAIC03NzMsMTAg
Kzc3Myw2IEBAIHN0YXRpYyB2b2lkIGR3X21pcGlfZHNpX2VuY29kZXJfZW5hYmxlKHN0cnVjdCBk
cm1fZW5jb2RlciAqZW5jb2RlcikKIAlpZiAobXV4IDwgMCkKIAkJcmV0dXJuOwogCi0JcG1fcnVu
dGltZV9nZXRfc3luYyhkc2ktPmRldik7Ci0JaWYgKGRzaS0+c2xhdmUpCi0JCXBtX3J1bnRpbWVf
Z2V0X3N5bmMoZHNpLT5zbGF2ZS0+ZGV2KTsKLQogCS8qCiAJICogRm9yIHRoZSBSSzMzOTksIHRo
ZSBjbGsgb2YgZ3JmIG11c3QgYmUgZW5hYmxlZCBiZWZvcmUgd3JpdGluZyBncmYKIAkgKiByZWdp
c3Rlci4gQW5kIGZvciBSSzMyODggb3Igb3RoZXIgc29jLCB0aGlzIGdyZl9jbGsgbXVzdCBiZSBO
VUxMLApAQCAtNzk1LDIwICs3OTEsMTAgQEAgc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfZW5jb2Rl
cl9lbmFibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQogCWNsa19kaXNhYmxlX3VucHJl
cGFyZShkc2ktPmdyZl9jbGspOwogfQogCi1zdGF0aWMgdm9pZCBkd19taXBpX2RzaV9lbmNvZGVy
X2Rpc2FibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQotewotCXN0cnVjdCBkd19taXBp
X2RzaV9yb2NrY2hpcCAqZHNpID0gdG9fZHNpKGVuY29kZXIpOwotCi0JaWYgKGRzaS0+c2xhdmUp
Ci0JCXBtX3J1bnRpbWVfcHV0KGRzaS0+c2xhdmUtPmRldik7Ci0JcG1fcnVudGltZV9wdXQoZHNp
LT5kZXYpOwotfQotCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9lbmNvZGVyX2hlbHBlcl9mdW5j
cwogZHdfbWlwaV9kc2lfZW5jb2Rlcl9oZWxwZXJfZnVuY3MgPSB7CiAJLmF0b21pY19jaGVjayA9
IGR3X21pcGlfZHNpX2VuY29kZXJfYXRvbWljX2NoZWNrLAogCS5lbmFibGUgPSBkd19taXBpX2Rz
aV9lbmNvZGVyX2VuYWJsZSwKLQkuZGlzYWJsZSA9IGR3X21pcGlfZHNpX2VuY29kZXJfZGlzYWJs
ZSwKIH07CiAKIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHNpX2RybV9jcmVhdGVfZW5jb2RlcihzdHJ1
Y3QgZHdfbWlwaV9kc2lfcm9ja2NoaXAgKmRzaSwKQEAgLTkzOCwxMCArOTI0LDE0IEBAIHN0YXRp
YyBpbnQgZHdfbWlwaV9kc2lfcm9ja2NoaXBfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsCiAJCXB1
dF9kZXZpY2Uoc2Vjb25kKTsKIAl9CiAKKwlwbV9ydW50aW1lX2dldF9zeW5jKGRzaS0+ZGV2KTsK
KwlpZiAoZHNpLT5zbGF2ZSkKKwkJcG1fcnVudGltZV9nZXRfc3luYyhkc2ktPnNsYXZlLT5kZXYp
OworCiAJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGRzaS0+cGxscmVmX2Nsayk7CiAJaWYgKHJl
dCkgewogCQlEUk1fREVWX0VSUk9SKGRldiwgIkZhaWxlZCB0byBlbmFibGUgcGxscmVmX2Nsazog
JWRcbiIsIHJldCk7Ci0JCXJldHVybiByZXQ7CisJCWdvdG8gb3V0X3BtX3J1bnRpbWU7CiAJfQog
CiAJLyoKQEAgLTk1Myw3ICs5NDMsNyBAQCBzdGF0aWMgaW50IGR3X21pcGlfZHNpX3JvY2tjaGlw
X2JpbmQoc3RydWN0IGRldmljZSAqZGV2LAogCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShkc2kt
PmdyZl9jbGspOwogCWlmIChyZXQpIHsKIAkJRFJNX0RFVl9FUlJPUihkc2ktPmRldiwgIkZhaWxl
ZCB0byBlbmFibGUgZ3JmX2NsazogJWRcbiIsIHJldCk7Ci0JCXJldHVybiByZXQ7CisJCWdvdG8g
b3V0X3BtX3J1bnRpbWU7CiAJfQogCiAJZHdfbWlwaV9kc2lfcm9ja2NoaXBfY29uZmlnKGRzaSk7
CkBAIC05NjUsMTYgKzk1NSwyMyBAQCBzdGF0aWMgaW50IGR3X21pcGlfZHNpX3JvY2tjaGlwX2Jp
bmQoc3RydWN0IGRldmljZSAqZGV2LAogCXJldCA9IHJvY2tjaGlwX2RzaV9kcm1fY3JlYXRlX2Vu
Y29kZXIoZHNpLCBkcm1fZGV2KTsKIAlpZiAocmV0KSB7CiAJCURSTV9ERVZfRVJST1IoZGV2LCAi
RmFpbGVkIHRvIGNyZWF0ZSBkcm0gZW5jb2RlclxuIik7Ci0JCXJldHVybiByZXQ7CisJCWdvdG8g
b3V0X3BtX3J1bnRpbWU7CiAJfQogCiAJcmV0ID0gZHdfbWlwaV9kc2lfYmluZChkc2ktPmRtZCwg
JmRzaS0+ZW5jb2Rlcik7CiAJaWYgKHJldCkgewogCQlEUk1fREVWX0VSUk9SKGRldiwgIkZhaWxl
ZCB0byBiaW5kOiAlZFxuIiwgcmV0KTsKLQkJcmV0dXJuIHJldDsKKwkJZ290byBvdXRfcG1fcnVu
dGltZTsKIAl9CiAKIAlyZXR1cm4gMDsKKworb3V0X3BtX3J1bnRpbWU6CisJcG1fcnVudGltZV9w
dXQoZHNpLT5kZXYpOworCWlmIChkc2ktPnNsYXZlKQorCQlwbV9ydW50aW1lX3B1dChkc2ktPnNs
YXZlLT5kZXYpOworCisJcmV0dXJuIHJldDsKIH0KIAogc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lf
cm9ja2NoaXBfdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwKQEAgLTk4OSw2ICs5ODYsMTAgQEAg
c3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfcm9ja2NoaXBfdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRl
diwKIAlkd19taXBpX2RzaV91bmJpbmQoZHNpLT5kbWQpOwogCiAJY2xrX2Rpc2FibGVfdW5wcmVw
YXJlKGRzaS0+cGxscmVmX2Nsayk7CisKKwlwbV9ydW50aW1lX3B1dChkc2ktPmRldik7CisJaWYg
KGRzaS0+c2xhdmUpCisJCXBtX3J1bnRpbWVfcHV0KGRzaS0+c2xhdmUtPmRldik7CiB9CiAKIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgY29tcG9uZW50X29wcyBkd19taXBpX2RzaV9yb2NrY2hpcF9vcHMg
PSB7Ci0tIAoyLjMzLjAuNjg1Lmc0NjY0MGNlZjM2LWdvb2cKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
