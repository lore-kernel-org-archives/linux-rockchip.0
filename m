Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B44B5E7716A
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Dec 2024 03:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EUXzz5pU2sJK6z5IoAop9dFIu5C1SSDflrz8hygXnio=; b=E9N2ceCNzD7DvF
	MgQMPzNKh8qWfdH/ocEvqTkh4xMpnvoEVY9H55/21LALuYS3PFLC4E87Yic2jFGVqIfIZRXM+pXtI
	H5gevrHy4fnB3G5rd7sxXKMieBioV+IIjWJ+LYdCU1WWJFdII7sHDTSBLpwS3k//zx9ziE/3TX+an
	Hk6P7auUoyozGYwXS76Ei0facG+on7UQ3CMYyXubtAAZOFqUrbEtyCdon7R+rkJgy4Agd+gDj04Sz
	3TMWphjEjWJ+jm/W5cH7wCesGF8tBnqzimpk0H244BE3ObMgEjD4Hf8KXmJcxPp27SurtTJMHa1ez
	6QtgNNu17XMjAV6bBlcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMfIg-00000007KEa-2YF9;
	Sun, 15 Dec 2024 03:28:10 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMfHa-00000007K3w-2Lp8;
	Sun, 15 Dec 2024 03:27:03 +0000
Received: by mail-il1-x136.google.com with SMTP id e9e14a558f8ab-3a7deec316aso10385685ab.1;
        Sat, 14 Dec 2024 19:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734233221; x=1734838021; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ii1hnMOWs8P6i05hyvRw7w3VSS/NET2YVPksEA1Jyw4=;
        b=ha4viodzWhY3onLMJqyQt9NFHEs9Y0vT5TpFWAn2axayo7WUTuqtXkZtZ32IDNK2m8
         1DqkRHT8wdMrCwEznEXqQEwEgWu8xs/hX9dfNrqeOp0v/iV8REvRHE4+5BJaUVls2X8g
         SEImGTWgUN2f4YDbbc00CXEh0cXPvzSxPt+8Qqmw+7rANVx7e/FPoSNam0UiaQCgrmHR
         zEFYoAp54bSsvh4u//WLg18NLSZlRzGGUGi4uSSpliYer7xrvCel08Z/mSIFYajOREvW
         l6b4CeIi3pYi+LZvG6s9S77nWJtBpqD6IbuAp/KhdLGfmyb9Wn68KHZiuhB4bz4CoA1E
         B4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734233221; x=1734838021;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ii1hnMOWs8P6i05hyvRw7w3VSS/NET2YVPksEA1Jyw4=;
        b=BMCRzPjDKoe6/LJXpxC2bBxQ1N5XEd4hyN+FPo3PHxfzxucTph2ZHjUeNoCkyWCzhX
         5WB/qIg5YHXnJxGtKprq4LJMD3IH6d3UJg8dJzA1fcW+uLTre688WPiHnhpKfqXqQXgC
         wyLUvA+ZzdzMTnPdW4V8c75d3EUX15sDCvBTdQ2nXTZROxPKRmNc/JkcqYm/ICFyDg4C
         4fJq/oEcj2LlEtE01a46ou09EGEhqdivmyNhrJ0wntT5rp2LDa4r6v+RVIEmigPwMSHk
         pGMHh/vBZ0RODiR5cLK4jbGx5Vwmw4zlO8Yz6IrPOuQj2fIQe3PVNXRFBS4/OXwCjxIQ
         H+pA==
X-Forwarded-Encrypted: i=1; AJvYcCW+B8d4dEBu/jkY1REwQJ5himus7acbmr6F9voFHKosWEPGRYLW3Pdc5CFkRBTVf+fxJCRWAT2cF0sRFzlwATLU@lists.infradead.org, AJvYcCXVeH1n6dPB2811voahfEUioR6n3o824ohBosrbF3rse8WbmTcF/TawErogrxzAiGpKjGvAQ5CRmZ/NXdVV23c=@lists.infradead.org
X-Gm-Message-State: AOJu0YzF20aAdz52XW+W0g/uRDXSAl0EvenA7VjxQWUDwP7Lon+OzbDs
	xicOrQj83wycPQwCVEhzUr/G/jgHTUX303lFYgRnwUWfcs60nyB0
X-Gm-Gg: ASbGncs6ah5MHXtAOgW/oDi5Kpel0Istl59yhZwLFqzZ34fGBm4PF6y5HDYEiZ2Tz3I
	Bmu7GzrU6nssJ/Iml2QVHAuO7tVe6wg0tKdwZxQE+MkVB/xdZO4vO89zFgupvcYfRxwvYKvlTeI
	aqFL8nuxiHcp0XKroNmnXyM2eIR1+DTFszT3oxpvwBqQiMN/u0mOad/4piaktYDM/C55zG9inue
	CzNBal7Rnqo8OAwKdaUXA4D6iht8HuBfF32EjYhwdNO5i12dMZVHapZ/e9SsX8gE5wTXVBg1qVY
	xOPowJxFzU7NQDh28yD17NCaJpk=
X-Google-Smtp-Source: AGHT+IGpwOE2wJxAOjLF0bAQQL6FoFKJ9XLm19p53xYBVuz+j8h2VFlGeMGJVVbDBavTQ6Ov2c1eDA==
X-Received: by 2002:a05:6e02:164f:b0:3a7:8208:b847 with SMTP id e9e14a558f8ab-3aff8c91872mr79670485ab.22.1734233220827;
        Sat, 14 Dec 2024 19:27:00 -0800 (PST)
Received: from localhost.localdomain (65-128-205-244.mpls.qwest.net. [65.128.205.244])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3b2482298c6sm7755575ab.31.2024.12.14.19.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Dec 2024 19:26:59 -0800 (PST)
From: Shimrra Shai <shimrrashai@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	Shimrra Shai <shimrrashai@gmail.com>
Subject: [PATCH v3 0/3] arm64: dts: rockchip: Add Firefly ITX-3588J Board
Date: Sat, 14 Dec 2024 21:24:52 -0600
Message-ID: <20241215032507.4739-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241214_192702_599697_D150C4A9 
X-CRM114-Status: GOOD (  10.14  )
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

VGhpcyBpcyB0aGUgM3JkIGRyYWZ0IG9mIHRoZSBkZXZpY2UgdHJlZSBwcm9wb3NhbCBmb3IgdGhl
IEZpcmVmbHkgSVRYLTM1ODhKCmJvYXJkLiBUaGUgc2FtZSBmdW5jdGlvbmFsaXR5IGlzc3VlcyBh
cyBiZWZvcmUgYXJlIHN0aWxsIG91dHN0YW5kaW5nOwpob3dldmVyIEkgaGF2ZSBjbGVhbmVkIHVw
IHRoZSBzdHlsZSBhbmQgc3RydWN0dXJlIGFzIHBlciB0aGUgY29tbWVudHMgYnkKSGVpa28gU3TD
vGJuZXIgb24gdmVyc2lvbiAyLiBPZiBwYXJ0aWN1bGFyIG5vdGUgaXMgdGhlIHNwbGl0dGluZyBv
ZiB0aGUKZGV2aWNlIHRyZWUgc291cmNlIGludG8gdHdvIGZpbGVzIGJlY2F1c2UgdGhpcyBwbGF0
Zm9ybSBhY3R1YWxseSBjb25zaXN0cwpvZiB0d28gYm9hcmRzOiB0aGUgSVRYLTM1ODhKIGJhc2Vi
b2FyZCBhbmQgYSBzaW5nbGUgQ29yZS0zNTg4SiBjb21wdXRlCm1vZHVsZSBzdHVjayBpbiBhIHNs
b3Qgb24gaXQuCgogLSBTaGltcnJhIFNoYWkuCgpTaGltcnJhIFNoYWkgKDMpOgogIGFybTY0OiBk
dHM6IHJvY2tjaGlwOiBhZGQgRFRzIGZvciBGaXJlZmx5IElUWC0zNTg4SiBhbmQgaXRzIENvcmUt
MzU4OEoKICAgIFNvTQogIGR0LWJpbmRpbmdzOiBwaW5jdHJsOiBhZGQgaGVhZGVyIGZvciBQQ0E5
NTU1IEdQSU8gZXh0ZW5kZXIgYmluZGluZ3Mgb24KICAgIHNvbWUgUm9ja2NoaXAtYmFzZWQgZGV2
aWNlcwogIGR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgRmlyZWZseSBJVFgtMzU4OEog
Ym9hcmQKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCAgICAgfCAg
IDcgKwogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgIHwgICAx
ICsKIC4uLi9yb2NrY2hpcC9yazM1ODgtZmlyZWZseS1jb3JlLTM1ODhqLmR0c2kgICB8IDQ1MyAr
KysrKysrKysrKwogLi4uL2R0cy9yb2NrY2hpcC9yazM1ODgtZmlyZWZseS1pdHgtMzU4OGouZHRz
IHwgNzEyICsrKysrKysrKysrKysrKysrKwogLi4uL2R0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2No
aXAtcGNhOTU1NS5oICAgIHwgIDMxICsKIDUgZmlsZXMgY2hhbmdlZCwgMTIwNCBpbnNlcnRpb25z
KCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtZmlyZWZseS1jb3JlLTM1ODhqLmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1maXJlZmx5LWl0eC0zNTg4ai5kdHMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAtcGNhOTU1NS5o
CgotLSAKMi40NS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
