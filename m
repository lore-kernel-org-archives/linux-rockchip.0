Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3B75EC8737
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Sep 2023 15:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ipn2W6/S1A+swoa2Q2w+7av3ZQJkEhoaGZvhAxUL7o8=; b=qeX/4x9RYQHdnC
	8KT6S3pKgh/VLRS1SjVuuVobjkWQeniF3QLt4svUbTqyBumkBi/2OBXOumojqwxol2f152l5ctCuf
	JVHFnNnmyMpXU26Dx8Fd2/QflDz03mDip2iZS0ME1wQ2RdU5ay5fF2e3EWpS5IxMGwBJRSnIZ9QPm
	ddRfYPqbdR/dyA8Ll9uVbjMZCMdC0HWSEr8WsuWeUlJx4xcc3QDk6kuFtw6as2MxzOCHy5PYMx8Dl
	przlrVHC7GnB6DudXQQD1RLT1Uw+thXlngprgY9XwH4Or2jFsgXE6GGxa9wYbD0hYSW5Vtskm+Omd
	3SCkUDqR6ynXBhczpjew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeGlp-00CFRX-1c;
	Thu, 07 Sep 2023 15:18:13 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeGll-00CFQH-25;
	Thu, 07 Sep 2023 15:18:11 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40078c4855fso12004905e9.3;
        Thu, 07 Sep 2023 08:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694099885; x=1694704685; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HfJRvGG1+8tzxY0msM4PeR5IqsDQRVgMRK4cu1iRcR4=;
        b=fIhzH1TKTx8zhOSsS02s5u9navLk16rPitCi8GhqnEYphgTWSwzT/uknqNp/OHYF9z
         MWePa3IP9LxQOSkxXRs3oJT7BrN4oRrLAWiHqiv1fDGYvgNFvPRJBSFX0J1gR2G4h8hv
         lcM1lON71qwosst0R/ku6m4WzqnxBUHBSZ4ZlAu9yWEAYH+hGGr9EWmwTWEnL1MsxYC6
         leTEEtOWLtNEY2yx0FKVjGFjkjUxZ9RoXRmfKb8AMYDowTkFgmMzXSMbm5izxg9MuYSK
         MCr8Hr2YcUdhMvBsoSEoocc1l4nguzNkNrXWpTFl+IuzzQ9NpRvK5qtMAezgCqzjw2Rq
         i1lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694099885; x=1694704685;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HfJRvGG1+8tzxY0msM4PeR5IqsDQRVgMRK4cu1iRcR4=;
        b=lCJxgZIrainvXKnW9yn46js7D31mZX5IqaM4q+IAOs1kNy9uafpiMs0bR0SDLbsx9s
         fBsPnws6ua1ceRJ9cA8uNuBX8m2dKkwhnEARon8nlQ1X/GelOpSumBwyIbiA+RjrDkjM
         IG174DbWop1CJiFHAyqgtDV62MbBEIr3aX3ILwNg8y8V/OoJCc3yepa2uUoq0JgP9vmM
         aHli0Q/atcezWNikXBWsEQ2UOtORNA+C/FBNOwA+sUjZHQhNOtAg/DC0t53QZi9NCmmT
         8LlycYC9dmdv0MyUX00lJaBq5/tME+VSDfZifyUYB23sx1qXrBHrXw0FzBqXzxxAayhm
         KDFg==
X-Gm-Message-State: AOJu0Yx/qV9wvLFLlPnvlkWrVnQwAap4Brqoz2k6WyVxMRg6SzIzOIOw
	czi6iScQAQ8wkwmeweOZ7ok=
X-Google-Smtp-Source: AGHT+IEWg4FplZCvEqhV5FF+ef0iLgRk5TOFXN3+CPcXJLIjMTAIazbHqeW6H02I5cYNKK/M1AKx3Q==
X-Received: by 2002:a5d:6846:0:b0:319:8a21:6f9a with SMTP id o6-20020a5d6846000000b003198a216f9amr4825426wrw.63.1694099884935;
        Thu, 07 Sep 2023 08:18:04 -0700 (PDT)
Received: from opti3050-1.lan (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id l16-20020adfe9d0000000b00317e77106dbsm23511973wrn.48.2023.09.07.08.18.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 08:18:04 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
X-Google-Original-From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
	Ermin Sunj <ermin.sunj@theobroma-systems.com>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: stable@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] arm64: dts: rockchip: use codec as clock master on px30-ringneck-haikou
Date: Thu,  7 Sep 2023 17:17:15 +0200
Message-Id: <20230907151725.198347-1-jakob.unterwurzacher@theobroma-systems.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_081809_686151_5D5DC716 
X-CRM114-Status: GOOD (  13.67  )
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

RnJvbTogRXJtaW4gU3VuaiA8ZXJtaW4uc3VuakB0aGVvYnJvbWEtc3lzdGVtcy5jb20+CgpJZiB0
aGUgY29kZWMgaXMgbm90IHRoZSBjbG9jayBtYXN0ZXIsIHRoZSBNQ0xLIG5lZWRzIHRvIGJlCnN5
bmNocm9ub3VzIHRvIGJvdGggSTJTX1NDTCBhbnMgSTJTX0xSQ0xLLiBXZSBkbyBub3QgaGF2ZSB0
aGF0Cm9uIEhhaWtvdSwgY2F1c2luZyBkaXN0b3J0ZWQgYXVkaW8uCgpCZWZvcmU6CgogUnVubmlu
ZyBhbiBhdWRpbyB0ZXN0IHNjcmlwdCBvbiBSaW5nbmVjaywgMWtIegogb3V0cHV0IHNpbmUgd2F2
ZSBpcyBub3Qgc3RhYmxlIGFuZCBzaG93cyBkaXN0b3J0aW9uLgoKQWZ0ZXI6CgogMTBoIGF1ZGlv
IHRlc3Qgc2NyaXB0IGxvb3AgZmFpbGVkIG9ubHkgb25lIHRpbWUuCiBUaGF0IGlzIDAuMDAwMTQl
IGZhaWx1cmUgcmF0ZS4KCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCkZpeGVzOiBjNDg0Y2Y5
M2Y2MWIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIFBYMzAtwrVRNyAoUmluZ25lY2spIFNv
TSB3aXRoIEhhaWtvdSBiYXNlYm9hcmQiKQpTaWduZWQtb2ZmLWJ5OiBFcm1pbiBTdW5qIDxlcm1p
bi5zdW5qQHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFrb2IgVW50ZXJ3
dXJ6YWNoZXIgPGpha29iLnVudGVyd3VyemFjaGVyQHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KLS0t
CgpOb3RlczoKICAgIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjMwODIzMTIy
MDAwLjU4NTc4Ny0xLWpha29iLnVudGVyd3VyemFjaGVyQHRoZW9icm9tYS1zeXN0ZW1zLmNvbS8K
ICAgIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjMwODIzMTMxNjUxLjU4Njkz
NC0xLWpha29iLnVudGVyd3VyemFjaGVyQHRoZW9icm9tYS1zeXN0ZW1zLmNvbS8KCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2staGFpa291LmR0cyB8IDYgKysrLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay1oYWlrb3Uu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLWhhaWtvdS5k
dHMKaW5kZXggMDhhM2FkM2U3YWU5Li44NzkyZmFlNTAyNTcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay1oYWlrb3UuZHRzCisrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay1oYWlrb3UuZHRzCkBAIC02OCwx
NSArNjgsMTUgQEAgaTJzMC1zb3VuZCB7CiAJCXNpbXBsZS1hdWRpby1jYXJkLGZvcm1hdCA9ICJp
MnMiOwogCQlzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gIkhhaWtvdSxJMlMtY29kZWMiOwogCQlz
aW1wbGUtYXVkaW8tY2FyZCxtY2xrLWZzID0gPDUxMj47CisJCXNpbXBsZS1hdWRpby1jYXJkLGZy
YW1lLW1hc3RlciA9IDwmc2d0bDUwMDBfY29kZWM+OworCQlzaW1wbGUtYXVkaW8tY2FyZCxiaXRj
bG9jay1tYXN0ZXIgPSA8JnNndGw1MDAwX2NvZGVjPjsKIAotCQlzaW1wbGUtYXVkaW8tY2FyZCxj
b2RlYyB7CisJCXNndGw1MDAwX2NvZGVjOiBzaW1wbGUtYXVkaW8tY2FyZCxjb2RlYyB7CiAJCQlj
bG9ja3MgPSA8JnNndGw1MDAwX2Nsaz47CiAJCQlzb3VuZC1kYWkgPSA8JnNndGw1MDAwPjsKIAkJ
fTsKIAogCQlzaW1wbGUtYXVkaW8tY2FyZCxjcHUgewotCQkJYml0Y2xvY2stbWFzdGVyOwotCQkJ
ZnJhbWUtbWFzdGVyOwogCQkJc291bmQtZGFpID0gPCZpMnMwXzhjaD47CiAJCX07CiAJfTsKLS0g
CjIuMzkuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
