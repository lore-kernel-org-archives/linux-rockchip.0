Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9F52D7977E
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Jan 2026 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q9YRF4WwAlJ99ITHmgPXv1xMJtJzJhl4U91kcGwyg44=; b=L8DptMio2DVnPk
	bbaYrk1rg7YWFoWKSOzbTPYzzaDv3DF/E8HB1jOHatiycm4edFbcoszb+QcuF1lMJIaTTo7QfjlaW
	BeUpQ2pN8wOUZ3q8zrCaBNJEr5RY7Uz8ypM9IscUz6Lk5/bCucK0e/S7/3XjdC8/fRIEUa+3CVcRS
	8BYXH0ig40/237bpg4ovmVpLzNiA71cYks8CCktJNCp8RjbpdxNG8fNHnMIrxwGhAhjEVZ2o0/1IL
	h7eQeT4w12vEPzO869bSbLH1P9VIWxxNDtbSgNEcf7H7TaMWKOdaTDvjcA45sNhWeGFzHWGp0XceX
	K+3cvmtOqzhjl/SSmtyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmCwT-00000002kJj-2wmj;
	Sat, 31 Jan 2026 15:31:21 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmCwQ-00000002kIu-36vc
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Jan 2026 15:31:20 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-c61342a69b9so1206146a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 31 Jan 2026 07:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769873477; x=1770478277; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kFQ3JH7bTaVaIkyZ1bwbiUf2YzJPD1mXXk4UJx103/U=;
        b=JZbhucmlt5C1W32xkKo1OH75IOF8vfYHzjjUX4EENRWHFRV2fjJA4+d32dUiLYG7FI
         1ijGjDZEMcfz45pCN46qSxOB3Y+L5VaM0br8vlZyUGAumtgSlwOZnXIirssno6bWqLW2
         1fRifZGJYAMi+p+1QV6YDGseKvWhb2QuKoaBUwCBSr+SUcnTpkC7nVrgqx6j480dnAn0
         y6b5HUAhCiGmjtzwexsaGBtc2J/0TOkVMuUrTtvG3PAADl6tEhxcm06DkBHsDZvV6nrf
         Dj/KjtkW6V50LbYv6xIsLqd+YCCqWLz8XhYePRJN2lSWe/9bZ+wsQRot0ogwi5iX/hZx
         VW1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769873477; x=1770478277;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kFQ3JH7bTaVaIkyZ1bwbiUf2YzJPD1mXXk4UJx103/U=;
        b=Tj2Qnsmbk7Q9O1OvYecDbN0m2tEbGtoHFZ+9da+eH6T1FEwtN40gDS0mJKOWB1IcbE
         bQnWZgynq7z4wUOrvAgRfEkgLzSTnlN1lQ6Uq4Bhs4K0YlQfFZBGJ1WhI/gmqhyi+bCp
         VfBR/XA3uTPOlCNo2vVU0LhIwjcrkOQio6vPeRz35YakciA1ODCTpdbCCPEYQ3icSIs8
         SplYt4oPkek4PMMPyVD5IOOVouEbFizKlcFaik6pHAg64TRL8JmHcg7ab1DlPt8/AZMM
         u88ENf0rfiNmp4r7dmhYHXgRaZ1FGHTRtk6w5axMddlubdQsT9tDkbJpjEKSoJxCrS1B
         1adg==
X-Forwarded-Encrypted: i=1; AJvYcCUTu/hQqLejYaCqwpFLVdkZTNnj5vJ7PKgpF0cVGiZ5k7DnNMAyvSl/yDlw3kfbyOeGpgOQssdiDBh9gfKNMA==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywu0Iv1uJo18efsKBlRqaesavxIgaRcxb2yKW+j8YmBpxTTDi9R
	ylxqFqNMHUv+hJwB7/mO/j1D0ISmTXhnbbM/A+CuLMKk/3VLhzKxlGIA
X-Gm-Gg: AZuq6aJKwv0sS8ubbxL0214XFCyQfZBEVcgEFGfWrvssvwB2e5Op+AXsjrxYSygYvkM
	z5JZ+Lz1aUdOZa4khPlVZg6YwRcRkBotLC8QCbmVGrEFeQ1DcRIzfCG7Eu7aNbwM8E9oB72s/Zt
	5WGCKtv4SUKR5afAOhZuHUjEdQN6JzaOZsUiyfY9q5zALhcIwYUMFA/KMf5BRx3x/ykaQ8T0RRq
	kmqH69L4XPiP9ROdtqODIUaHYI697tiUNq4fzRTDszfZq2YDIdZfx/iqUJWrAHVJMAGgMkcOeAf
	U2loCqAAoR0UuvE9uYYywdyo7A1Ba7pgnjFr+J2XQKDmoMbKIYe36niVBKl8hHq+Dj78axPbZKi
	rD0pxhI9NY0UD4wingGRlqnUk+I83QQ2BpGh09IX0g9eQ5QXBjrR+mEXSCvGSGD4mTYhwaju/ZE
	WvBygwu4AArw5Ns+1XZKnWzZf3QXqQpoIM2U6Bt/IPgqYxkmk5
X-Received: by 2002:a17:90b:5868:b0:32b:baaa:21b0 with SMTP id 98e67ed59e1d1-3543b2e0552mr7576153a91.6.1769873477161;
        Sat, 31 Jan 2026 07:31:17 -0800 (PST)
Received: from arch.localdomain (awork135098.netvigator.com. [219.76.135.98])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642487f1f5sm10701122a12.0.2026.01.31.07.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 07:31:16 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v2 0/3] board: rockchip: add OneThing Edge Cube series
Date: Sat, 31 Jan 2026 23:31:00 +0800
Message-ID: <20260131153106.31723-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260131_073118_785686_7E51137F 
X-CRM114-Status: GOOD (  11.66  )
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

VGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgT25lVGhpbmcgRWRnZSBDdWJlIHNlcmll
cywgd2hpY2ggd2VyZQppbml0aWFsbHkgbWFya2V0ZWQgYnkgT25lVGhpbmcgVGVjaCBhcyBQQ0RO
IChQMlAgQ29udGVudCBEZWxpdmVyeSBOZXR3b3JrKSAKZGV2aWNlcy4gVGhlIEVkZ2UgQ3ViZSBz
ZXJpZXMgaXMgYmFzZWQgb24gUm9ja2NoaXAgUkszNTY2IFNvQyBhbmQgaXMgZGVzaWduZWQKZm9y
IFBDRE4gYXBwbGljYXRpb25zLgoKVGhlIFYyIHBhdGNoZXMgYWRkcyBhIG5ldyBkZXZpY2UsIHRo
ZSBPbmVUaGluZyBPRUMuIFRvZ2V0aGVyIHdpdGggdGhlIFYxIHBhdGNoIApPbmVUaGluZyBPRUMt
dHVyYm8sIHRoZXNlIHR3byBkZXZpY2VzIHNoYXJlIGlkZW50aWNhbCBoYXJkd2FyZSBzcGVjaWZp
Y2F0aW9ucwpleGNlcHQgZm9yIHRoZSBSQU0gY2FwYWNpdHksIGVuYWJsaW5nIGNvbnZlbmllbnQg
c3VwcG9ydCBpbXBsZW1lbnRhdGlvbi4KClRoZSBWMSBwYXRjaCB3YXMgc3VibWl0dGVkIHF1aXRl
IHNvbWUgdGltZSBhZ28gYW5kIGlzIG5vdyBpbiBhbiBhcmNoaXZlZCBzdGF0ZVsxXS4KaXQgaGFz
IG5vdCBiZWVuIHByb2Nlc3NlZCBkdWUgdG8gc2NoZWR1bGluZyBjb25mbGljdHMg4oCTIGFwb2xv
Z2llcyBmb3IgdGhpcy4KCkNoYW5nZXMgaW4gdjI6Ci0gRml4IHR5cG8gaW4gdmVuZG9yLXByZWZp
eGVzLgotIFNpbXBsaWZ5IGNvbXBhbnkgYW5kIGRldmljZSBuYW1lcy4KLSBBZGQgdGhlIG5ldyBk
ZXZpY2UgT0VDIGFzIHBhcnQgb2YgdGhlIE9uZVRoaW5nIEVkZ2UgQ3ViZSBzZXJpZXMgZm9yIHN1
cHBvcnQuCi0gU2V0IGRpc3BsYXktc3Vic3lzdGVtIG5vZGUgdG8gImRpc2FibGVkIiBpbnN0ZWFk
IG9mIHVzaW5nICJkZWxldGUtbm9kZSIuCi0gVXNpbmcgZ2VuZXJpYyBub2RlIG5hbWVzIGZvciBs
ZWRzLgotIEZvbGxvdyBEVFMgY29kZWluZyBzdHlsZSBpbiB2Y2M1djBfdXNiX2hvc3RfZW4gcGlu
Y3RybCBub2RlLgotIE1vZGlmeSB0aGUgcGh5X21vZGUgb2YgR01BQyBmcm9tIHJnbWlpIHRvIHJn
bWlpLWlkLgotIEFkanVzdCBkZXZpY2UgdHJlZSBub2RlIG9yZGVyaW5nIHRvIGZvbGxvdyBjb2Rl
IHN0eWxlLgoKTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNzEz
MTYzMjU1LjE2MzY2OS0xLWplcnJ5c3RldmUxMTAxQGdtYWlsLmNvbS8KClsxXSBodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2NoaXAvY292ZXIvMjAyNTA3MTMx
NjMyNTUuMTYzNjY5LTEtamVycnlzdGV2ZTExMDFAZ21haWwuY29tLwoKSnVuIFlhbiAoMyk6CiAg
ZHQtYmluZGluZ3M6IHZlbmRvci1wcmVmaXhlczogQWRkIFNoZW56aGVuIE9uZVRoaW5nIFRlY2hu
b2xvZ2llcyBDby4sCiAgICBMdGQuCiAgZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFkZCBP
bmVUaGluZyBFZGdlIEN1YmUgc2VyaWVzCiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBPbmVU
aGluZyBFZGdlIEN1YmUgc2VyaWVzCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tj
aGlwLnlhbWwgICAgIHwgICA2ICsKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVm
aXhlcy55YW1sICB8ICAgMiArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxl
ICAgICAgICAgfCAgIDIgKwogLi4uL3JvY2tjaGlwL3JrMzU2Ni1vbmV0aGluZy1vZWMtdHVyYm8u
ZHRzICAgIHwgIDEwICsKIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtb25ldGhpbmctb2Vj
LmR0cyB8ICAxMCArCiAuLi4vZHRzL3JvY2tjaGlwL3JrMzU2Ni1vbmV0aGluZy1vZWMuZHRzaSAg
ICAgfCAzMTMgKysrKysrKysrKysrKysrKysrCiA2IGZpbGVzIGNoYW5nZWQsIDM0MyBpbnNlcnRp
b25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NjYtb25ldGhpbmctb2VjLXR1cmJvLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LW9uZXRoaW5nLW9lYy5kdHMKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1vbmV0aGluZy1vZWMu
ZHRzaQoKLS0gCjIuNTIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
