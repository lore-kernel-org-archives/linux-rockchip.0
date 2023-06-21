Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2B94EB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 06:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eZABiRfD14+L+GV9rta8LXaNCXW4uM+z9x3VP2NSIuk=; b=rSor4VXP/pIU/1
	RwkNFVS6eeHS1sRbJOHlHfuX9X2eOLYPeyEAQ4CTb2SevSvPnJuKQloW2rC6GhyXmC7q8Es3zDo+g
	aexdFZdvuaMsjyqoLjqDpjqTCP0UZCeDZQ+ADIbYWah5zaumeY+LzPOXrCrORrPgCTcACcelgnoO1
	ScNbeBS8Kn9M9B4h6+JovRTJ9EVf4igOEu/tCDYhx52JZClmIjJzUK5jh+2RxhDDUNy+EY605uF01
	+0LX9lm8G3MqjwOU9uYdP0rlXqsxLnXr/w4Hi41AzMwgGjRJba4+0l8RYh7sRDs5xxnpnuGfIagrD
	nUwnE3reAE9DEQyVzLUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBrak-00DSyF-0j;
	Wed, 21 Jun 2023 06:45:22 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBrah-00DSva-1W
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 06:45:20 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-668709767b1so2400954b3a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Jun 2023 23:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1687329917; x=1689921917;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3PWNcofH+6pB/oLs4RxdAm9c1izTSo17OEuhMv0ehyw=;
        b=BiikUF1NGcgVQiQtmg5R1VKOOquvob6a+jWN8XJknCyvhAxqVsel6CW+W88hCB21v+
         gQpsvH5Hn73BCh7yafz0H0FN2ik/G7ueTHCur8mpPjRzVnKXbc7UBUNIz0DQJt6dEzYk
         az9DYMp6y6Nf70egY+xLh7MTmuhgtG3oP4qdoqe9clmBaz3dk4UseBO8bdtRCz/RdyF/
         uCB91/ltEpmYE0x9kUVVr162Zgns4wUm6syC0kJM3T9VIf2IrZ8Dwf1vVrGrkLKpSGe3
         Hmg5d1Pnhjw9Ygg3nD6hIIjBW233fIG4jqWzHFW7yaKGS3l6hSDIiTdkG3ZpgYU5+rCc
         kNrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687329917; x=1689921917;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3PWNcofH+6pB/oLs4RxdAm9c1izTSo17OEuhMv0ehyw=;
        b=XcRpMmlVhNT8BNWWbsVjQNnlCUsl8Xr8uauWnM3h2pbWuzOIpVnuxApqvPgxpwtxbJ
         XmEGGOH+8pxFA3JyA2Ev/Pyu0KXsnPv92Dz2SP/h4ILasM4I4bjjH837ioiVN5UoDCO1
         KHbKNCkp54PXovv85bK1M35/tCoH8hP8SxV7j+2t5f3TIDzC1SCtM03nKsvcu1YOYDfu
         S1aEh7/q7MwpnG0SNT0DKmzCDaU4ZLJFCP3EyL6vQmAZCk6buFzkcSSGGpGfjg8MbYss
         4ylpgpufE5VetqEYLFpOnv13pbcf1SmFWl0Si3yvx9/PkgPVgelT7OMMpk7xhv6XMAer
         UmZw==
X-Gm-Message-State: AC+VfDyeWIRmn7y+UfLHzV9pb0u5ugGeSle4YznyFeVsuiHE8G6J3/kw
	a9HouFWsNIqOUXQMuKvH4S3p3pkioPTYo+gXxrSl/w==
X-Google-Smtp-Source: ACHHUZ6+HQYwCqqt0Zk/7ftvnvknnfwp2Rkgd8Zph0O9k8aPu2QDBzLbLJJhS2dDalfuKzZhD8pCYQ==
X-Received: by 2002:a05:6a20:4419:b0:121:d489:5f11 with SMTP id ce25-20020a056a20441900b00121d4895f11mr6686983pzb.50.1687329917058;
        Tue, 20 Jun 2023 23:45:17 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:332c:9233:93ac:9811])
        by smtp.gmail.com with ESMTPSA id s2-20020a170902ea0200b001ac5896e96esm2643877plg.207.2023.06.20.23.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 23:45:16 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH] arm64: dts: rockchip: rk3588: Drop unchanged max-frequency
Date: Wed, 21 Jun 2023 12:15:07 +0530
Message-Id: <20230621064507.479891-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_234519_524504_89776B0B 
X-CRM114-Status: GOOD (  11.15  )
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

MjAwTUh6IGlzIHRoZSBkZWZhdWx0IHJrMzU4OCBlbW1jIG1heC1mcmVxdWVuY3kgYWRkZWQgaW4g
ZHRzaSwgc28gd2h5CnRoZSBib2FyZCBEVCBmaWxlc8KgYXJlIGFkZGluZ8KgdGhlIHNhbWUgdmFs
dWUgZXhwbGljaXRseT8KCkRyb3AgdGhhdCB1bmNoYW5nZWQgcHJvcGVydHkgdmFsdWUuCgpTaWdu
ZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBlZGdlYmxlLmFpPgotLS0KIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWVkZ2VibGUtbmV1NmEuZHRzaSAgIHwgMSAtCiBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1lZGdlYmxlLW5ldTZiLmR0c2kgICB8IDEg
LQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMS12MTAuZHRzICAgICAg
ICAgfCAxIC0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRz
ICAgICAgICAgIHwgMSAtCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtaW5k
aWVkcm9pZC1ub3ZhLmR0cyB8IDIgLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4cy1raGFkYXMtZWRnZTIuZHRzICAgIHwgMSAtCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OHMtcm9jay01YS5kdHMgICAgICAgICB8IDEgLQogNyBmaWxlcyBjaGFuZ2VkLCA4
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LWVkZ2VibGUtbmV1NmEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LWVkZ2VibGUtbmV1NmEuZHRzaQppbmRleCAzOGUxYTFlMjVmMzMuLjcyNzU4MGFhYTEw
NSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZWRnZWJs
ZS1uZXU2YS5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWVk
Z2VibGUtbmV1NmEuZHRzaQpAQCAtMjUsNyArMjUsNiBAQCAmc2RoY2kgewogCW5vLXNkaW87CiAJ
bm8tc2Q7CiAJbm9uLXJlbW92YWJsZTsKLQltYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAwMD47CiAJ
bW1jLWhzNDAwLTFfOHY7CiAJbW1jLWhzNDAwLWVuaGFuY2VkLXN0cm9iZTsKIAlzdGF0dXMgPSAi
b2theSI7CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1l
ZGdlYmxlLW5ldTZiLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1l
ZGdlYmxlLW5ldTZiLmR0c2kKaW5kZXggMWM1YmNmMTI4MGI0Li40YTg3ZWFkMTViM2YgMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWVkZ2VibGUtbmV1NmIu
ZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1lZGdlYmxlLW5l
dTZiLmR0c2kKQEAgLTI1LDcgKzI1LDYgQEAgJnNkaGNpIHsKIAluby1zZGlvOwogCW5vLXNkOwog
CW5vbi1yZW1vdmFibGU7Ci0JbWF4LWZyZXF1ZW5jeSA9IDwyMDAwMDAwMDA+OwogCW1tYy1oczQw
MC0xXzh2OwogCW1tYy1oczQwMC1lbmhhbmNlZC1zdHJvYmU7CiAJc3RhdHVzID0gIm9rYXkiOwpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMS12MTAu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMS12MTAuZHRzCmlu
ZGV4IDRiMmQ4NTdlZTIxOS4uZjA2YjJkZGNmY2I2IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1ldmIxLXYxMC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMS12MTAuZHRzCkBAIC0xNDksNyArMTQ5LDYgQEAgJnNk
aGNpIHsKIAluby1zZGlvOwogCW5vLXNkOwogCW5vbi1yZW1vdmFibGU7Ci0JbWF4LWZyZXF1ZW5j
eSA9IDwyMDAwMDAwMDA+OwogCW1tYy1oczQwMC0xXzh2OwogCW1tYy1oczQwMC1lbmhhbmNlZC1z
dHJvYmU7CiAJc3RhdHVzID0gIm9rYXkiOwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1yb2NrLTViLmR0cwppbmRleCBhZmRhOTc2NjgwYmMuLjQzNWZhMTQ1NjU1MiAx
MDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5k
dHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMK
QEAgLTIxNyw3ICsyMTcsNiBAQCAmc2RoY2kgewogCW5vLXNkaW87CiAJbm8tc2Q7CiAJbm9uLXJl
bW92YWJsZTsKLQltYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAwMD47CiAJbW1jLWhzNDAwLTFfOHY7
CiAJbW1jLWhzNDAwLWVuaGFuY2VkLXN0cm9iZTsKIAlzdGF0dXMgPSAib2theSI7CmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtaW5kaWVkcm9pZC1ub3Zh
LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1pbmRpZWRyb2lkLW5v
dmEuZHRzCmluZGV4IDRkOWVkMmEwMjczNi4uZjBjZTUwMmU5Yjk1IDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtaW5kaWVkcm9pZC1ub3ZhLmR0cworKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtaW5kaWVkcm9pZC1ub3ZhLmR0
cwpAQCAtNDAxLDcgKzQwMSw2IEBAICZzZGhjaSB7CiAJbm8tc2Q7CiAJbm8tc2RpbzsKIAlub24t
cmVtb3ZhYmxlOwotCW1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDAwPjsKIAl2bW1jLXN1cHBseSA9
IDwmdmNjXzN2M19zMD47CiAJdnFtbWMtc3VwcGx5ID0gPCZ2Y2NfMXY4X3MzPjsKIAlzdGF0dXMg
PSAib2theSI7CkBAIC00MjksNyArNDI4LDYgQEAgJnNkbW1jIHsKIAljYXAtbW1jLWhpZ2hzcGVl
ZDsKIAljYXAtc2QtaGlnaHNwZWVkOwogCWRpc2FibGUtd3A7Ci0JbWF4LWZyZXF1ZW5jeSA9IDwy
MDAwMDAwMDA+OwogCW5vLXNkaW87CiAJbm8tbW1jOwogCXNkLXVocy1zZHIxMDQ7CmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMta2hhZGFzLWVkZ2UyLmR0
cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1raGFkYXMtZWRnZTIuZHRz
CmluZGV4IDkzYjRhMGM0ZWQwZi4uODI0NzhhNDUyNTMzIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMta2hhZGFzLWVkZ2UyLmR0cworKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMta2hhZGFzLWVkZ2UyLmR0cwpAQCAtMjUsNyAr
MjUsNiBAQCAmc2RoY2kgewogCW5vLXNkaW87CiAJbm8tc2Q7CiAJbm9uLXJlbW92YWJsZTsKLQlt
YXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAwMD47CiAJbW1jLWhzNDAwLTFfOHY7CiAJbW1jLWhzNDAw
LWVuaGFuY2VkLXN0cm9iZTsKIAlzdGF0dXMgPSAib2theSI7CmRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHMgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHMKaW5kZXggOTAxODI1NTE0ZjlkLi5j
MjUxZjJmYTAwNjEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4cy1yb2NrLTVhLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OHMtcm9jay01YS5kdHMKQEAgLTYxLDcgKzYxLDYgQEAgJnNkaGNpIHsKIAluby1zZGlvOwogCW5v
LXNkOwogCW5vbi1yZW1vdmFibGU7Ci0JbWF4LWZyZXF1ZW5jeSA9IDwyMDAwMDAwMDA+OwogCW1t
Yy1oczQwMC0xXzh2OwogCW1tYy1oczQwMC1lbmhhbmNlZC1zdHJvYmU7CiAJc3RhdHVzID0gIm9r
YXkiOwotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
