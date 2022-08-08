Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF602C00140
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Aug 2022 03:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+kkuUbRer8xuKVIJaH41hSC0L+PZlxer8SoK+fHgff0=; b=gxgaGuapCBQwpH
	sx0OW7Qfih7C/fgeDm/M1aVdvvnrwRZgFCQg62Tgp0m7LDCmOaD5AJneDDHROecAoyz4yTuMijlB3
	0Gk+kRB9A2RTyi0bsgPofwXLMTp2JxnG4pdtI51m3hRY7IeBl110csSTJqyoL/lrOUXgDvCSqbgZv
	nXV0efKY7EaPYb4Yq5BBZsjYX8HBpx2/+HQ9G5fqzysRQs6X/j/kD1QzvSlOLQwdiyGIhYCRad25b
	++FgBc+Sslowkf8rVTvaPlQ6COkj9164ERJbqn8X1leHlPsR3fBm6MBf2GOO2HuPdgu3oT9PVagGN
	H8VO6RmL4q1pqIFSH/hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKt7N-008R9v-CN; Mon, 08 Aug 2022 03:07:49 +0000
Received: from mail-ua1-x932.google.com ([2607:f8b0:4864:20::932])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKstU-008EC5-Ue; Mon, 08 Aug 2022 02:53:33 +0000
Received: by mail-ua1-x932.google.com with SMTP id t21so3045795uaq.3;
        Sun, 07 Aug 2022 19:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+pXr+XtINASTHtS2Vl6bIYsQmgt7hCm2Uk02zirBamE=;
        b=DuIfbPNc/jD0VNTOP+g2ETrBj0e4lcoEJxt0+xWyNjjDJ38fFgmGqqOAlqzAbHD4Kd
         c24UswnzFicvTMSOLtuwPo/5J9vWDYheAaCnP0jSi2rEVAjy1I42niESIVC1yPsq8/Jr
         qa6cSQQ4lkesXFWjp2to05n2Ojnq2ONF6FAihQswTcaWaaNW8K0oc+KG5BHOHTxJvqee
         QoyS6q23KuP+0Pvn68t7wiwX730lDXQpewZdUmFfE3E1b0nwRgh95/bwKMdooFCEngej
         yMdQDfhF44abEobNk4NhCHW+mwcQxe+KdkbkQTa1Je59Di/IwaNkdKczhDmZQDdre69q
         Safw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+pXr+XtINASTHtS2Vl6bIYsQmgt7hCm2Uk02zirBamE=;
        b=mwO5RtPK5QGRN3YYB4j3gH1wIGgxB/4ysW2+VBdtGYFdxJgYSx25rLcmXF7YfWfXjA
         miwnJDggdiUIarGcYmEaESCPjiuk+FV8CrOqs/44qenLl67YwSe96U4jYHfFaUZkGVVU
         38qNPA5ZZB3GxtOw7Hdkgq8hZ1DelhQbEYekc917R4wLpUEQHADECpCyzkx2r4Z/jhvG
         dTNK1yiLaiUC5Z6PxWeD8XQSm1pBJXrAYy062poWRiN7SbHzb7jt0EyqT7Q+lz0Mn83a
         aXatj/9qdo7B9AZQREZkeAWRhNq0M7To/3+cE3l6D2i4vPlngO0KrEnN6ydkaSr/n+ai
         4k6Q==
X-Gm-Message-State: ACgBeo1HxKg1vaACH58n9OZT4sUA1KF3uC3cHpnMYHswUUxWFh/N2Ftl
	WTzJ3O4fsAWaal5tFkewjCk=
X-Google-Smtp-Source: AA6agR6nrcGsVhmRrgD+6HWTXlPcSeQ6XmGOLfsFd/QFIsTf/jcpqbHZKwGVSQVCG1eWZYCMKT82zQ==
X-Received: by 2002:a9f:35c9:0:b0:387:967a:fa31 with SMTP id u9-20020a9f35c9000000b00387967afa31mr6908438uad.70.1659927205668;
        Sun, 07 Aug 2022 19:53:25 -0700 (PDT)
Received: from bullseye-server.. (179-107-140-16.zamix.com.br. [179.107.140.16])
        by smtp.gmail.com with ESMTPSA id w8-20020ab07288000000b00384293c4199sm8263979uao.23.2022.08.07.19.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Aug 2022 19:53:25 -0700 (PDT)
From: =?UTF-8?q?Jo=C3=A3o=20H=2E=20Spies?= <jhlspies@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Heiko Stuebner <heiko@sntech.de>,
	Jianqun Xu <jay.xu@rock-chips.com>
Cc: Maya Matuszczyk <maccraft123mc@gmail.com>,
	=?UTF-8?q?Jo=C3=A3o=20H=2E=20Spies?= <jhlspies@gmail.com>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] pinctrl: rockchip: Enhance support for IRQ_TYPE_EDGE_BOTH
Date: Mon,  8 Aug 2022 02:51:20 +0000
Message-Id: <20220808025121.110223-1-jhlspies@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_195329_040913_48FCB8DA 
X-CRM114-Status: GOOD (  13.00  )
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

U3dpdGNoaW5nIGJldHdlZW4gZmFsbGluZy9yaXNpbmcgZWRnZXMgZm9yIElSUV9UWVBFX0VER0Vf
Qk9USCBvbiBwaW5zIHRoYXQKcmVxdWlyZSBkZWJvdW5jZSBjYW4gY2F1c2UgdGhlIGRldmljZSB0
byBsb3NlIGV2ZW50cyBkdWUgdG8gYSBkZXN5bmMKYmV0d2VlbiBwaW4gc3RhdGUgYW5kIGlycSB0
eXBlLgoKVGhpcyBwcm9ibGVtIGlzIHJlc29sdmVkIGJ5IHN3aXRjaGluZyBiZXR3ZWVuIElSUV9U
WVBFX0xFVkVMX0xPVyBhbmQKSVJRX1RZUEVfTEVWRUxfSElHSCBpbnN0ZWFkLgoKRml4ZXM6IDkz
NmVlMjYgKCJncGlvL3JvY2tjaGlwOiBhZGQgZHJpdmVyIGZvciByb2NrY2hpcCBncGlvIikKU2ln
bmVkLW9mZi1ieTogSm/Do28gSC4gU3BpZXMgPGpobHNwaWVzQGdtYWlsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlv
LXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCmluZGV4IDA5OWUzNThk
MjQ5MS4uNDhiOTQ4NzIzMDc3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hp
cC5jCisrKyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKQEAgLTQxNywxMSArNDE3LDEx
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfaXJxX3NldF90eXBlKHN0cnVjdCBpcnFfZGF0YSAqZCwg
dW5zaWduZWQgaW50IHR5cGUpCiAJCQlnb3RvIG91dDsKIAkJfSBlbHNlIHsKIAkJCWJhbmstPnRv
Z2dsZV9lZGdlX21vZGUgfD0gbWFzazsKLQkJCWxldmVsIHw9IG1hc2s7CisJCQlsZXZlbCAmPSB+
bWFzazsKIAogCQkJLyoKIAkJCSAqIERldGVybWluZSBncGlvIHN0YXRlLiBJZiAxIG5leHQgaW50
ZXJydXB0IHNob3VsZCBiZQotCQkJICogZmFsbGluZyBvdGhlcndpc2UgcmlzaW5nLgorCQkJICog
bG93IG90aGVyd2lzZSBoaWdoLgogCQkJICovCiAJCQlkYXRhID0gcmVhZGwoYmFuay0+cmVnX2Jh
c2UgKyBiYW5rLT5ncGlvX3JlZ3MtPmV4dF9wb3J0KTsKIAkJCWlmIChkYXRhICYgbWFzaykKLS0g
CjIuMzAuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
