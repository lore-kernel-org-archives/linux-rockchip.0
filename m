Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFCFDC7619A
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 12:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YYdQ4txhTxv133dztf4t/9ojkNZvtDEl3vNr5lZS2Lk=; b=oDrGiqNhRg12c/
	oWlccsGzZ8KFuRSNnZbzo+vrPC2vNB3z/GrM1/9KsIQ58DAt7uoIHm5wkdQBN8ulaS8LaRK6TdQV3
	OZ4cTpbEGQFNojLJk2Ov878VF1mtf6W39pRmihk2yFe0c1PA44UqalqVRFGrABMvZqyIITIZj70w2
	ssnr0fCNawG62FeuFlUZJ+qbs6cjdC+xzuCZgloW9CxJGbYpxJ/KlUuAMNqM+9YqX4P6XBPBV7OwP
	kJ0xOroO49H+IeVbCWwh74yLtUapzay474S3U+A56uJHukTEem7UN7nO7t3zvet29UnYkjIgfEps8
	jvJkQ2eEfqwkilLueQVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2PA-004QQS-1C;
	Wed, 05 Apr 2023 12:38:24 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2P6-004QOy-1R;
	Wed, 05 Apr 2023 12:38:21 +0000
Received: by mail-wr1-x42e.google.com with SMTP id h17so36029020wrt.8;
        Wed, 05 Apr 2023 05:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680698296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l2D7J+jiJON7Q9iMerF9wUCEq2MkEeshCjVOJN+IjIU=;
        b=Zy+7Yp0Go7z6QYKD1XsRLWRBjKocGSpUcbP3ev3NnJVR45oaiEAYkxbDrUKL9kpHha
         O2gyCjuZybPMqbcwiicgWDgMes43WYcqM1hCXWQy/AL6iQq9JrnSyGu/aNuVfMDq4FZF
         UJpeWVc1jN63BxsHbT0OjCPFBhWiXEKFvxhX83dG670jyyFkk69dSOViLPQHFsIO/xTw
         zwNtmydV0Jw83HtOHqbkMD6WG3gMkgCsAn+v9r7NXwtlsA+n9Z9xfWQJCNrwV9UiT6BG
         maje+hcmHA7VPl3KYJPX4E7ApWdnKRMeTmVqmFbxNyqn1Pg6fISbO0G2jr9ESTVbZmjM
         YDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680698296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l2D7J+jiJON7Q9iMerF9wUCEq2MkEeshCjVOJN+IjIU=;
        b=5FMLM13sNUbJhx7W6w5XZFVkWjnzR4i7trvjdrBLEPXB6l8W9SClaYsnwDXEYLwpws
         Z/SOIWBKkbx6Xa+SItGVvlzxr2achGOqpJeAyM7fzd+dmEV7MW42MRvHXhbdzTG6Zw5S
         4kogisKNsWqWD35xRA//kDHjl7alWJAbFSJU94NP0WwXTDxmftU5qhghPoPyOz3R2h8e
         4CLs/uPCnfu+A+Iq/Sh26ZMXpKcjIgoKrzxa2ZRiZTT76f6SA04MCjVoAIViMnetU5q3
         av9WXLSEu3ciT2nTYE+KhgbXsgabHeZEOZF9UYiojrFR9OLE7X3K8jC//+QgIlHFtb5Y
         T0xw==
X-Gm-Message-State: AAQBX9dcWv71JG+qU7zP6P27V1pRh88/o4oxNn6dBKnVse4DS35vrMFv
	M66j+mo+7EcF/5mAElkOeU0=
X-Google-Smtp-Source: AKy350bDkNl6lpyilJ15fMuDfjsdTwlUYtX9rOugcaON4O5ZwIz5R0EfQbZO0xzZVivOHl9+e0Btfw==
X-Received: by 2002:adf:cd82:0:b0:2d8:908c:8fa0 with SMTP id q2-20020adfcd82000000b002d8908c8fa0mr4397915wrj.9.1680698296038;
        Wed, 05 Apr 2023 05:38:16 -0700 (PDT)
Received: from morpheus.home.roving-it.com (9.f.4.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::4f9])
        by smtp.googlemail.com with ESMTPSA id j8-20020adfe508000000b002cfe71153b4sm14829623wrm.60.2023.04.05.05.38.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 05:38:15 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ondrej Jirman <megi@xff.cz>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Martijn Braam <martijn@brixit.nl>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
Date: Wed,  5 Apr 2023 13:38:13 +0100
Message-Id: <20230405123813.2272919-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_053820_502104_FB2971F5 
X-CRM114-Status: GOOD (  11.72  )
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

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpUaGVzZSBhcmUgaW1wbGVtZW50ZWQg
dmlhIHJlZ3VsYXIgQURDLCBzbyByZWd1bGFyIHBvbGxpbmcgaXMgbmVlZGVkLApmb3IgdGhlc2Ug
a2V5cyB0byB3b3JrLgoKU2lnbmVkLW9mZi1ieTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4
aXQubmw+CkNvLWRldmVsb3BlZC1ieTogS2FtaWwgVHJ6Y2nFhHNraSA8YXl1ZmFuQGF5dWZhbi5l
dT4KU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+ClNpZ25lZC1vZmYt
Ynk6IFBldGVyIFJvYmluc29uIDxwYnJvYmluc29uQGdtYWlsLmNvbT4KLS0tCiAuLi4vZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyAgICAgfCAyNiArKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKaW5kZXggYTA3
OTVhMmIxY2IxLi5lY2Q0ODA0MGViMGMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCkBAIC0xMCw2ICsxMCw3IEBACiAg
Ki8KIAogL2R0cy12MS87CisjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvZ3Bpby1rZXlzLmg+
CiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvbGludXgtZXZlbnQtY29kZXMuaD4KICNpbmNs
dWRlICJyazMzOTkuZHRzaSIKICNpbmNsdWRlICJyazMzOTktb3BwLmR0c2kiCkBAIC0yOSw2ICsz
MCwyNiBAQCBjaG9zZW4gewogCQlzdGRvdXQtcGF0aCA9ICJzZXJpYWwyOjExNTIwMG44IjsKIAl9
OwogCisJYWRjLWtleXMgeworCQljb21wYXRpYmxlID0gImFkYy1rZXlzIjsKKwkJaW8tY2hhbm5l
bHMgPSA8JnNhcmFkYyAxPjsKKwkJaW8tY2hhbm5lbC1uYW1lcyA9ICJidXR0b25zIjsKKwkJa2V5
dXAtdGhyZXNob2xkLW1pY3Jvdm9sdCA9IDwxNjAwMDAwPjsKKwkJcG9sbC1pbnRlcnZhbCA9IDwx
MDA+OworCisJCWJ1dHRvbi11cCB7CisJCQlsYWJlbCA9ICJWb2x1bWUgVXAiOworCQkJbGludXgs
Y29kZSA9IDxLRVlfVk9MVU1FVVA+OworCQkJcHJlc3MtdGhyZXNob2xkLW1pY3Jvdm9sdCA9IDwx
MDAwMDA+OworCQl9OworCisJCWJ1dHRvbi1kb3duIHsKKwkJCWxhYmVsID0gIlZvbHVtZSBEb3du
IjsKKwkJCWxpbnV4LGNvZGUgPSA8S0VZX1ZPTFVNRURPV04+OworCQkJcHJlc3MtdGhyZXNob2xk
LW1pY3Jvdm9sdCA9IDwzMDAwMDA+OworCQl9OworCX07CisKIAlncGlvLWtleXMgewogCQljb21w
YXRpYmxlID0gImdwaW8ta2V5cyI7CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CkBAIC00
MjksNiArNDUwLDExIEBAICZzZGlvMCB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJnNhcmFk
YyB7CisJdnJlZi1zdXBwbHkgPSA8JnZjY2ExdjhfczM+OworCXN0YXR1cyA9ICJva2F5IjsKK307
CisKICZzZG1tYyB7CiAJYnVzLXdpZHRoID0gPDQ+OwogCWNhcC1zZC1oaWdoc3BlZWQ7Ci0tIAoy
LjQwLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
