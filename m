Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75A0EC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 23:39:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BF0D06527D
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 23:39:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BF0D06527D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OuGMolt6xZQUV4E6ykiEUghLYEnIvGhm4Z1Y+ewVCEg=; b=iyrQRcN6LvnhUgv09RaY/WvjQ
	4aaS7WtEujsneuR9akTpVxgUpjUbrJZL/xlMWi4NI6wKShB0lWOATcBP8hpAc8q+0kf7eykMO5Ncq
	vgrthSA67EcVEFNT8PNhAsDQBCPVGaLbAdcmQ9pQMxYbsfoByC9LpyDTsAmjLHvYPUk7PPSV9TcNG
	A5x6Xckllaaw36g8OU94SLljHpkl+lxWTm3Y20FC2NZLTpIVwlO+i6GFig0fntujgQWpbBzar7cgF
	TMcN778jeSsuXQNllSxWOMFS+Pl6aiVMkSYH9kw777EDDxCqmLxKnqgt3WDh08MLDLBIAmPkhdZfo
	foreJ4+wA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJPTX-003OJQ-Dd; Mon, 08 Mar 2021 23:39:47 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJPTJ-003OFf-A5
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 23:39:37 +0000
Received: by mail-wr1-x430.google.com with SMTP id u16so13254346wrt.1
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Mar 2021 15:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uZSiFVg2/jE/hYgherndxXMvyjYS/mnvO0aiBAtVcTY=;
 b=P8IUb56aHvxNiBcR/CB2PDATcfaksqV1COHeci+/1rPLmnHVhC6/J6dmga1ype2kPD
 y5nO+fZRT+Q01YyfV6dVWpjcTV11S8AEgt0Dxv8iLETo3Qpqiyr7cMzYyVbhV3edes7D
 Ntt0UFi0vz8SeHE5hMwsYOeNeHeWcAoXpk5ZKt46Bo+ktVq3Y9izfK5uUe+7S0+v7eFu
 9vMfA4eKgd0IEn1yEIgXRwddhbs780bpdI0xhI9olt3COY4rJ0giRYZnnW49jp8BdNjI
 gs2xNiv25fwG+FW6Ga3uwnMrTvMZUtYDa7uxqloKRC4t9A2Xs2ip5AqCtbPITWTov4pQ
 T6jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uZSiFVg2/jE/hYgherndxXMvyjYS/mnvO0aiBAtVcTY=;
 b=BHPym/XoVvwKteANp3+fir7W6WHflxz3FMfDTpaZgybB/Ec/Im7ODikqlOqNOHwMO2
 G3xb6/ZYIJapCvDvvwDCXDeu9zPdW1OOfXLkXV2D4jo9OH5sqha7egnjBOe1z2un0MYZ
 sUHNne0mBIBQKXNnGU3l7NxromcnWaLt8v16cmbC6YKZz28oqmCnrX3SkJB6Nzy4QLT/
 YQ9GN9SOnhn2WHmK66OtB/B8MiT3cvCFGiN/vepl7bAGyHLQ2PMvSizv/VbmbxULS7QH
 WOcWNl2LXdUcvX65kxjDgA/px8MuPB/LOTsIFCUDJVMJ9MzmODd3t8YQs+Boy4laIfQK
 JcuQ==
X-Gm-Message-State: AOAM532YcuD84ZIeo+QhzD6oXROK/3AP7mNS5hSFdX8yHygaN530/KLp
 8ZdJ8J2er89zBDqTAvtMULUNVg==
X-Google-Smtp-Source: ABdhPJyRtfec+1PX+zot1HDJ41Qt6zDolA4BMsNuV8uYbC8MJpD9vosvX5TPZ+IV7sKmKEzKnFQ+EA==
X-Received: by 2002:adf:b642:: with SMTP id i2mr2594471wre.8.1615246772633;
 Mon, 08 Mar 2021 15:39:32 -0800 (PST)
Received: from localhost.localdomain
 (lns-bzn-59-82-252-141-80.adsl.proxad.net. [82.252.141.80])
 by smtp.gmail.com with ESMTPSA id b186sm1145408wmc.44.2021.03.08.15.39.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 15:39:32 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [RESEND PATCH v5 3/4] arm64: dts: rockchip: Enable dmc and dfi nodes
 on gru.
Date: Tue,  9 Mar 2021 00:38:57 +0100
Message-Id: <20210308233858.24741-3-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210308233858.24741-1-daniel.lezcano@linaro.org>
References: <20210308233858.24741-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_233936_115684_8816DF44 
X-CRM114-Status: GOOD (  11.42  )
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

RnJvbTogTGluIEh1YW5nIDxobEByb2NrLWNoaXBzLmNvbT4KCkVuYWJsZSB0aGUgRE1DIChEeW5h
bWljIE1lbW9yeSBDb250cm9sbGVyKSBhbmQgdGhlIERGSSAoRERSIFBIWQpJbnRlcmZhY2UpIG5v
ZGVzIG9uIGdydSBib2FyZHMgc28gd2UgY2FuIHN1cHBvcnQgRERSIERWRlMuCgpTaWduZWQtb2Zm
LWJ5OiBMaW4gSHVhbmcgPGhsQHJvY2stY2hpcHMuY29tPgpTaWduZWQtb2ZmLWJ5OiBFbnJpYyBC
YWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgpTaWduZWQtb2Zm
LWJ5OiBHYcOrbCBQT1JUQVkgPGdhZWwucG9ydGF5QGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYt
Ynk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgotLS0KIC4uLi9k
dHMvcm9ja2NoaXAvcmszMzk5LWdydS1jaHJvbWVib29rLmR0c2kgICB8ICA0ICsrCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUuZHRzaSAgfCA0NSArKysrKysrKysrKysr
KysrKysrCiAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW9wMS1vcHAuZHRzaSAgICAgfCAy
OSArKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgNzggaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS1jaHJvbWVib29r
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUtY2hyb21lYm9v
ay5kdHNpCmluZGV4IDEzODRkYWJiZGY0MC4uZDMyYjAxNWFkMmNkIDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUtY2hyb21lYm9vay5kdHNpCisrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS1jaHJvbWVib29rLmR0c2kK
QEAgLTM5OCwzICszOTgsNyBAQCBhcF9pMmNfdHA6ICZpMmM1IHsKIAkJcm9ja2NoaXAscGlucyA9
IDwwIFJLX1BCMCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKIAl9OwogfTsKKworJmRt
YyB7CisJY2VudGVyLXN1cHBseSA9IDwmcHB2YXJfY2VudGVybG9naWM+OworfTsKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LmR0c2kKaW5kZXggMzJkY2FmMjEwMDg1
Li5mYzNkYzlhNGI0M2MgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LWdydS5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LWdydS5kdHNpCkBAIC0yODksNiArMjg5LDEyIEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAor
JmRtY19vcHBfdGFibGUgeworCW9wcDA0IHsKKwkJb3BwLXN1c3BlbmQ7CisJfTsKK307CisKIC8q
CiAgKiBTZXQgc29tZSBzdXNwZW5kIG9wZXJhdGluZyBwb2ludHMgdG8gYXZvaWQgT1ZQIGluIHN1
c3BlbmQKICAqCkBAIC00ODksNiArNDk1LDQ1IEBAIGFwX2kyY19hdWRpbzogJmkyYzggewogCXN0
YXR1cyA9ICJva2F5IjsKIH07CiAKKyZkZmkgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKKyZk
bWMgeworCXN0YXR1cyA9ICJva2F5IjsKKwl1cHRocmVzaG9sZCA9IDwyNT47CisJZG93bmRpZmZl
cmVudGlhbCA9IDwxNT47CisJcm9ja2NoaXAsZGRyM19zcGVlZF9iaW4gPSA8MjE+OworCXJvY2tj
aGlwLHBkX2lkbGUgPSA8MHg0MD47CisJcm9ja2NoaXAsc3JfaWRsZSA9IDwweDI+OworCXJvY2tj
aGlwLHNyX21jX2dhdGVfaWRsZSA9IDwweDM+OworCXJvY2tjaGlwLHNycGRfbGl0ZV9pZGxlCT0g
PDB4ND47CisJcm9ja2NoaXAsc3RhbmRieV9pZGxlID0gPDB4MjAwMD47CisJcm9ja2NoaXAsZHJh
bV9kbGxfZGlzX2ZyZXEgPSA8MzAwMDAwMDAwPjsKKwlyb2NrY2hpcCxwaHlfZGxsX2Rpc19mcmVx
ID0gPDEyNTAwMDAwMD47CisJcm9ja2NoaXAsYXV0b19wZF9kaXNfZnJlcSA9IDw2NjYwMDAwMDA+
OworCXJvY2tjaGlwLGRkcjNfb2R0X2Rpc19mcmVxID0gPDMzMzAwMDAwMD47CisJcm9ja2NoaXAs
ZGRyM19kcnYgPSA8NDA+OworCXJvY2tjaGlwLGRkcjNfb2R0ID0gPDEyMD47CisJcm9ja2NoaXAs
cGh5X2RkcjNfY2FfZHJ2ID0gPDQwPjsKKwlyb2NrY2hpcCxwaHlfZGRyM19kcV9kcnYgPSA8NDA+
OworCXJvY2tjaGlwLHBoeV9kZHIzX29kdCA9IDwyNDA+OworCXJvY2tjaGlwLGxwZGRyM19vZHRf
ZGlzX2ZyZXEgPSA8MzMzMDAwMDAwPjsKKwlyb2NrY2hpcCxscGRkcjNfZHJ2ID0gPDM0PjsKKwly
b2NrY2hpcCxscGRkcjNfb2R0ID0gPDI0MD47CisJcm9ja2NoaXAscGh5X2xwZGRyM19jYV9kcnYg
PSA8NDA+OworCXJvY2tjaGlwLHBoeV9scGRkcjNfZHFfZHJ2ID0gPDQwPjsKKwlyb2NrY2hpcCxw
aHlfbHBkZHIzX29kdCA9IDwyNDA+OworCXJvY2tjaGlwLGxwZGRyNF9vZHRfZGlzX2ZyZXEgPSA8
MzMzMDAwMDAwPjsKKwlyb2NrY2hpcCxscGRkcjRfZHJ2ID0gPDYwPjsKKwlyb2NrY2hpcCxscGRk
cjRfZHFfb2R0ID0gPDQwPjsKKwlyb2NrY2hpcCxscGRkcjRfY2Ffb2R0ID0gPDQwPjsKKwlyb2Nr
Y2hpcCxwaHlfbHBkZHI0X2NhX2RydiA9IDw0MD47CisJcm9ja2NoaXAscGh5X2xwZGRyNF9ja19j
c19kcnYgPSA8ODA+OworCXJvY2tjaGlwLHBoeV9scGRkcjRfZHFfZHJ2ID0gPDgwPjsKKwlyb2Nr
Y2hpcCxwaHlfbHBkZHI0X29kdCA9IDw2MD47Cit9OworCiAmc2RoY2kgewogCS8qCiAJICogU2ln
bmFsIGludGVncml0eSBpc24ndCBncmVhdCBhdCAyMDAgTUh6IGFuZCAxNTAgTUh6IChERFIpIGdp
dmVzIHRoZQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
b3AxLW9wcC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktb3AxLW9w
cC5kdHNpCmluZGV4IDY5Y2M5YjA1YmFhNS4uYzllNzAzMmIwMWE4IDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1vcDEtb3BwLmR0c2kKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktb3AxLW9wcC5kdHNpCkBAIC0xMTAsNiArMTEw
LDMxIEBACiAJCQlvcHAtbWljcm92b2x0ID0gPDEwNzUwMDA+OwogCQl9OwogCX07CisKKwlkbWNf
b3BwX3RhYmxlOiBkbWNfb3BwX3RhYmxlIHsKKwkJY29tcGF0aWJsZSA9ICJvcGVyYXRpbmctcG9p
bnRzLXYyIjsKKworCQlvcHAwMCB7CisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDIwMDAwMDAwMD47
CisJCQlvcHAtbWljcm92b2x0ID0gPDkwMDAwMD47CisJCX07CisJCW9wcDAxIHsKKwkJCW9wcC1o
eiA9IC9iaXRzLyA2NCA8NDAwMDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQgPSA8OTAwMDAwPjsK
KwkJfTsKKwkJb3BwMDIgeworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw2NjYwMDAwMDA+OworCQkJ
b3BwLW1pY3Jvdm9sdCA9IDw5MDAwMDA+OworCQl9OworCQlvcHAwMyB7CisJCQlvcHAtaHogPSAv
Yml0cy8gNjQgPDgwMDAwMDAwMD47CisJCQlvcHAtbWljcm92b2x0ID0gPDkwMDAwMD47CisJCX07
CisJCW9wcDA0IHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8OTI4MDAwMDAwPjsKKwkJCW9wcC1t
aWNyb3ZvbHQgPSA8OTAwMDAwPjsKKwkJfTsKKwl9OwogfTsKIAogJmNwdV9sMCB7CkBAIC0xMzks
MyArMTY0LDcgQEAKICZncHUgewogCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmdwdV9vcHBfdGFi
bGU+OwogfTsKKworJmRtYyB7CisJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmZG1jX29wcF90YWJs
ZT47Cit9OwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
