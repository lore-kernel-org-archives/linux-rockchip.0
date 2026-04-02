Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC436D39426
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Apr 2026 14:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlDzPhLF1M5hpaeclUoW44OMg1aUYNuYzWhm4DGFNac=; b=OIMKWl5y0GaQBd
	CvfwQqtbJm6HzVxyBHOK9zwPH3FxJLLNbYRNpa4uj4qOeNwMQ30DUI7JHhUk/Eb+aRUsBedilumRh
	SYWeEVb8NciH5WmFT4bscYTQsM755OgJ0g7RL6pQnRLltxY/CsCnZfBfrjzQ3uuRjecRUVKg4SWb/
	/4YGmKxFGB1Yn5iSb2ObHGHLY+odpLQSeONmpxsiPcBOFR5MopS0J5W0KoaiSuE/w95ptoNa/TZha
	Fy/qK/+UEgELz2MWsZtRT4bZK8IzdCr9cSILqO2ehbT7InBNTxDiob3+zT2/lQIqi+oY4px8WaE8j
	pMl06k6V0Rli313vzEcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Itb-00000000JSb-46wQ;
	Thu, 02 Apr 2026 14:19:43 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Ita-00000000JRu-01fR
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Apr 2026 14:19:43 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-3585ec417f6so785477a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2026 07:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775139581; x=1775744381; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zz1zlRSiKHlMJZnEUctS28g6FTYx8BEHRWatZco+c68=;
        b=OfRICO8KxDsZXxJTPAbSE0eHGK4iSe2sHN8hBIcDUykyzF4ZKvZUUO6x/CpM3nSFkn
         sDqnDuZMX2mRxjEyIXSw0fDm/djZ4kI84vMKledUWJ27mW+MIDmK74QlpIb23hRBT6mz
         7utP/PGbT+jx5dCXgXX+SNv0S86lNp3yr/FX1PxinNZYNodJaMQ7uFSw+r6KOPSPWbSm
         pMG+dUAJbwDlub/3UbtI8/jK5KDpQCxrearRyF1ZafdxZiufJT3l64CW3uKBASdi4RdW
         ggsonAcRwoZDsN35TbaE08SVQqRJoV66lt0mhyPx1tbftCCtKTOdSlZSiw1J8w9HDwXT
         wfbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775139581; x=1775744381;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Zz1zlRSiKHlMJZnEUctS28g6FTYx8BEHRWatZco+c68=;
        b=XKmdXnhHEjLpUhYzd8WR0Pv36ScWTW4rJzskvFsrML1Z7q3qT545bdj3QdKHDCSB9g
         9moK2xUYMq3mrUOKnkJFKWhdTA9RaQHI/tTUn8LqitVCcQ7iuW2Mbvuhex0yv6pwflBc
         f4IaGni60iuAuU0MUHmcUIwVlMsR5nQRjVgdO9Apv2ksd+GBS4rA1i6ZB189c7RBthuC
         W17ANsv2SZlQm+MCrR6JtKWfZFz79Wa6fBK7mpkziIJrMSLiiFVrheb2So2z1fKn3ZX2
         cqeYfvB0EvOVNRSJJvkDYUzXqLXrwhG3DgzOwaXrDS8mQ/QoJXuQevPkKpa0SCj8qkhJ
         pqmw==
X-Forwarded-Encrypted: i=1; AJvYcCXrjgWU6O/VQZbk0KAlZSQ+yG/h8xotRw833oMCGavAlPyeGZHpzhp8dWDR3OLRUcV3htiLhS/KsMtLY27Dcg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxYAuvMXr6ZGiYCXd2TAUzRLrV9X9uUpTCgWdxR2jm9wiPKpZEW
	nFyNSIS3UJnhrJC4zlM6VRDXIHBD+kiYcY755Og0jwZGe6bSGGhx5IVz
X-Gm-Gg: AeBDievdWbvPc31UrdNrc3ZLma9tzTK+lJQZVg1mpcJwDrCVIdxjXOikV1xa0jcSnGH
	uhs/y4gx/33/qXFja6vK/iV9Xxu+/sw2SoUn5dtwO1ZcdUtlp3Y0b1Ms1KvUWjHOW1mTpN8zh78
	UkHfVQgwAmwTy+dKf8O+NA3E7ONxc0MS0n7SWxXMLBgPQCAdumuZyELdGTJqk+RtN+Tf1rZO3ER
	90VvZQ0h5S2lvXOE0HB1Qk5irUpgw3oPxevpCb+0pH5QKgLlxKn+/yOzBJTA4ez3vFnwRkKXzml
	xef5t1pLxWLEBAN49DAvMZXgZ42tTtqVOtvjSGZRdAbCsMCYFDIN/K+UVb4mVjq9AzpAp9A2jG6
	3JixIkRH9jXgxjzpYOpJ4aOBIKirAZ0yQ04zsi+fnsEJGrARttbK/mv+mr2MGHJcETNGeiwo03Q
	5/Sfffi/3Ds+km5phPP937
X-Received: by 2002:a17:90b:314b:b0:35a:2ed:9b6f with SMTP id 98e67ed59e1d1-35dd65b05e0mr2598226a91.0.1775139581041;
        Thu, 02 Apr 2026 07:19:41 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.200])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35dbe9377b7sm10959123a91.10.2026.04.02.07.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2026 07:19:40 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-i2c@vger.kernel.org (open list:I2C SUBSYSTEM HOST DRIVERS),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v3 2/2] i2c: rk3x: Fix deadlock by splitting rk3x_i2c_adapt_div into locked/unlocked variants
Date: Thu,  2 Apr 2026 19:49:23 +0530
Message-ID: <20260402141927.7216-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260402141927.7216-1-linux.amoon@gmail.com>
References: <20260402141927.7216-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_071942_064250_AA36E9F1 
X-CRM114-Status: GOOD (  12.72  )
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

SW50cm9kdWNlIF9fcmszeF9pMmNfYWRhcHRfZGl2KCkgZnVuY3Rpb24gYXMgYSBsb2NrZWQtb25s
eSBoZWxwZXIgdG8KaGFuZGxlIGNvcmUgdGltaW5nIGNhbGN1bGF0aW9ucyBhbmQgcmVnaXN0ZXIg
dXBkYXRlcy4gVGhpcyByZXN0cnVjdHVyaW5nCmFsbG93cyB0aGVzZSBvcGVyYXRpb25zIHRvIGJl
IHNhZmVseSBjYWxsZWQgZnJvbSBjb250ZXh0cyB3aGVyZSBpMmMtPmxvY2sKaXMgYWxyZWFkeSBo
ZWxk4oCUc3VjaCBhcyBkdXJpbmcgZXJyb3IgcmVjb3ZlcnkgaW4gcmszeF9pMmNfeGZlcl9jb21t
b24KYXZvaWRpbmcgcmVjdXJzaXZlIGxvY2tpbmcgb3IgZGVhZGxvY2tzLgoKU2lnbmVkLW9mZi1i
eTogQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29tPgotLS0KdjM6IG5ldyBwYXRjaCB0
byBhdm9pZCBkZWFkbG9jay4KLS0tCiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYyB8IDI1
ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJj
LXJrM3guYyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jCmluZGV4IDA2YTc3NzgwY2Y4
Mi4uMjU1NmEzZDhiMmExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3gu
YworKysgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYwpAQCAtODgwLDIyICs4ODAsMTgg
QEAgc3RhdGljIGludCByazN4X2kyY192MV9jYWxjX3RpbWluZ3ModW5zaWduZWQgbG9uZyBjbGtf
cmF0ZSwKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0aWMgdm9pZCByazN4X2kyY19hZGFwdF9kaXYo
c3RydWN0IHJrM3hfaTJjICppMmMsIHVuc2lnbmVkIGxvbmcgY2xrX3JhdGUpCitzdGF0aWMgdm9p
ZCBfX3JrM3hfaTJjX2FkYXB0X2RpdihzdHJ1Y3QgcmszeF9pMmMgKmkyYywgdW5zaWduZWQgbG9u
ZyBjbGtfcmF0ZSkKIHsKIAlzdHJ1Y3QgaTJjX3RpbWluZ3MgKnQgPSAmaTJjLT50OwogCXN0cnVj
dCByazN4X2kyY19jYWxjZWRfdGltaW5ncyBjYWxjOwogCXVuc2lnbmVkIGxvbmcgcGVyaW9kLCB0
aW1lX2hvbGQgPSAoV0FJVF9USU1FT1VUIC8gMikgKiAxMDAwMDAwOwogCXU2NCB0X2xvd19ucywg
dF9oaWdoX25zOwotCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAJdTMyIHZhbDsKIAlpbnQgcmV0Owog
CiAJcmV0ID0gaTJjLT5zb2NfZGF0YS0+Y2FsY190aW1pbmdzKGNsa19yYXRlLCB0LCAmY2FsYyk7
CiAJV0FSTl9PTkNFKHJldCAhPSAwLCAiQ291bGQgbm90IHJlYWNoIFNDTCBmcmVxICV1IiwgdC0+
YnVzX2ZyZXFfaHopOwogCi0JY2xrX2VuYWJsZShpMmMtPnBjbGspOwotCi0Jc3Bpbl9sb2NrX2ly
cXNhdmUoJmkyYy0+bG9jaywgZmxhZ3MpOwogCXZhbCA9IGkyY19yZWFkbChpMmMsIFJFR19DT04p
OwogCXZhbCAmPSB+UkVHX0NPTl9UVU5JTkdfTUFTSzsKIAl2YWwgfD0gY2FsYy50dW5pbmc7CkBA
IC05MDksMTAgKzkwNSw2IEBAIHN0YXRpYyB2b2lkIHJrM3hfaTJjX2FkYXB0X2RpdihzdHJ1Y3Qg
cmszeF9pMmMgKmkyYywgdW5zaWduZWQgbG9uZyBjbGtfcmF0ZSkKIAkJaTJjX3dyaXRlbChpMmMs
IHZhbCwgUkVHX1NDTF9PRV9EQik7CiAJfQogCi0Jc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmaTJj
LT5sb2NrLCBmbGFncyk7Ci0KLQljbGtfZGlzYWJsZShpMmMtPnBjbGspOwotCiAJdF9sb3dfbnMg
PSBkaXZfdTY0KDhVTEwgKiBIWl9QRVJfR0haICogKGNhbGMuZGl2X2xvdyArIDEpLCBjbGtfcmF0
ZSk7CiAJdF9oaWdoX25zID0gZGl2X3U2NCg4VUxMICogSFpfUEVSX0dIWiAqIChjYWxjLmRpdl9o
aWdoICsgMSksIGNsa19yYXRlKTsKIAlkZXZfZGJnKGkyYy0+ZGV2LApAQCAtOTIyLDYgKzkxNCwx
OSBAQCBzdGF0aWMgdm9pZCByazN4X2kyY19hZGFwdF9kaXYoc3RydWN0IHJrM3hfaTJjICppMmMs
IHVuc2lnbmVkIGxvbmcgY2xrX3JhdGUpCiAJCXRfbG93X25zLCB0X2hpZ2hfbnMpOwogfQogCitz
dGF0aWMgdm9pZCByazN4X2kyY19hZGFwdF9kaXYoc3RydWN0IHJrM3hfaTJjICppMmMsIHVuc2ln
bmVkIGxvbmcgY2xrX3JhdGUpCit7CisJdW5zaWduZWQgbG9uZyBmbGFnczsKKworCWNsa19lbmFi
bGUoaTJjLT5wY2xrKTsKKworCXNwaW5fbG9ja19pcnFzYXZlKCZpMmMtPmxvY2ssIGZsYWdzKTsK
KwlfX3JrM3hfaTJjX2FkYXB0X2RpdihpMmMsIGNsa19yYXRlKTsKKwlzcGluX3VubG9ja19pcnFy
ZXN0b3JlKCZpMmMtPmxvY2ssIGZsYWdzKTsKKworCWNsa19kaXNhYmxlKGkyYy0+cGNsayk7Cit9
CisKIC8qKgogICogcmszeF9pMmNfY2xrX25vdGlmaWVyX2NiIC0gQ2xvY2sgcmF0ZSBjaGFuZ2Ug
Y2FsbGJhY2sKICAqIEBuYjoJCVBvaW50ZXIgdG8gbm90aWZpZXIgYmxvY2sKQEAgLTExNTIsNyAr
MTE1Nyw3IEBAIHN0YXRpYyBpbnQgcmszeF9pMmNfeGZlcl9jb21tb24oc3RydWN0IGkyY19hZGFw
dGVyICphZGFwLAogCWlmIChyZXQgPT0gLUVUSU1FRE9VVCAmJiBpMmMtPnNvY19kYXRhLT5oYXNf
c2NsX29lX2RlYm91bmNlKSB7CiAJCWlmIChpcGQgJiBSRUdfSU5UX1NMVl9IRFNDTCkgewogCQkJ
ZGV2X2VycihpMmMtPmRldiwgIlNDTCBob2xkIGJ5IHNsYXZlIGRldGVjdGVkLCByZXNldHRpbmcg
dGltaW5ncy5cbiIpOwotCQkJcmszeF9pMmNfYWRhcHRfZGl2KGkyYywgY2xrX2dldF9yYXRlKGky
Yy0+Y2xrKSk7CisJCQlfX3JrM3hfaTJjX2FkYXB0X2RpdihpMmMsIGNsa19nZXRfcmF0ZShpMmMt
PmNsaykpOwogCQl9CiAJfQogCi0tIAoyLjUwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
