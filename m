Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05507C54754
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 08:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rREWmuJik49bzpc6HiYCbdGccgO2/Ezss0j88hgxL88=; b=sfXSyZDjsIO0nr
	wawYZ6Xp8Kk/NgHulB1vG2HnVZVGouduB20auS773y13SOAVsv7MSHBxiuK4PCjf0taNOBN746Qu8
	GKVFynmBPEiCIixif8YzHcT/AHWWmfofUKNtikqSNqb2OD+/uvWKP9G3Wny4TJnCv82C6vqxvIw9P
	mTiMefXRpn73zWwAkDmKBHoc28oep37mlF4Zgi+fsYM7b0jAs6939u6bTGbMGLytdXJEOhxG6QWmR
	223gzSu7pLzzrcCm6tF8tI3nj2COnwpAtMRqrjdIYR+R4Mf22xYUF0dPIsIDbV5bTI1EDZu0vJGWB
	kHgFsLAfmYLm/+b0zrvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwIZ-00000008Re9-09D8;
	Mon, 19 May 2025 08:56:39 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwIU-00000008RaP-1MSh
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 08:56:36 +0000
X-QQ-mid: esmtpsz19t1747644981t575a3957
X-QQ-Originating-IP: pCj0VqU38uxtKMOih4dtpbkZZpPgbevf1huby6Q/fnE=
Received: from localhost.localdomain ( [182.245.65.180])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 19 May 2025 16:56:19 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3928078300355608272
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add SakuraPi prefix
Date: Mon, 19 May 2025 16:56:12 +0800
Message-Id: <20250519085614.2245892-2-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519085614.2245892-1-i@chainsx.cn>
References: <20250519085614.2245892-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: N4xNDYS0Y2xMphm81jZAdhqXE9xoNPhXJCZKjkbSMJaNvjtudRsqF4nM
	3YU2b3BtfC5VPdwPqPyXobySAXu1viX+4KU4UXQYSF3O5C5T0MuzOlTb8o3pEulp2QsyyOT
	0qOMSOjfM1o3MF+lp0dyZojqWihyvt4HH5cHPhlFuKMuaeA3UE0dXqlI84aG7Gn9iPJxqme
	gcH4LmA0elqj8alBEevAlOb9nI22NT22v7OeBofqm3oFc/K3VAaicBxZi2tYYRckYABRUIy
	Q/Mhwehpd1u94RoLKM8QqRrCaNBIRsv8PNHj0NllakaRLVR7DlzTzOQv4oeBAqabJqx2a63
	jk4mn6ZfFeWOQDQtIH+dPtpQYlyG31JWDjiRKx9MowP1fCz3AvleemjnB4Q3iKgqLgZmpHU
	Nh2T6SA6ArBrBeyiSoPgK5TgFZZ3pQPc3Y0QxlpfdozmhQjFlgd9E5LdDGdErvbsMel4ZtD
	8cz+KwPElRXKi88Tzg2XZU95wCIMjbw7tKr6J9Zn43w3TK42OXEaloHOWw5T5ds/OKdUJxJ
	xgfgcSjFdaoOpJVZrgQnobMIMtaToVC48ZPFEySpfI5qteeJfIyt/LNUdMvrigvpc5Wl2yq
	mfhoMo5MSFdw/EmJKf29iqIdSe/Gd8coJI8oirwibhbKT33Uf6ACyPw+vmQ+jmKwFV1nRS8
	u89gaid5l0OjDSQkkvnbKcEhr/2Ek4I4XF34vevtOn6YqfUofUl61HAZQC2IngppDo4AtIa
	vdGPfGhelC4i5QuAiYvX/8PyP5qFfvxtVeY4sUctlmkiaKyJOVlaVH6EIDGBMiGvR+E5vUO
	8VCdMwuRpUTgnHvM2W3FkGzlY8V2q4LRz+GRCD5kKy4A/rA4D+zse+VQ75onizBBVxrm9L3
	n0FI/PpDNJLkAl9Uk9TOtIvcWejXcn35SvO/+jONdyOgTPNOTrl0h2c74hg7bMhMFuRSaAl
	O8ZT1yrHMbWkVZ1hjhkdi0n3EVgxVRewBUFz0O5bQs5SooUM2y6XDh1SRjuv+sXSTSMY5/I
	UZaWLUI1Jhpeu0awT38BEPwI4HCU7woBdoqz7+NQ==
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_015634_859641_7E81B61F 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
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
Cc: andrew@lunn.ch, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QWRkIHZlbmRvciBwcmVmaXggZm9yIFNha3VyYVBpLm9yZywgd2hpY2ggcHJvZHVjZXMKZGV2ZWxv
cG1lbnQgYm9hcmRzIGxpa2UgdGhlIFNha3VyYVBpLVJLMzMwOEIuCgpTaWduZWQtb2ZmLWJ5OiBI
c3VuIExhaSA8aUBjaGFpbnN4LmNuPgotLS0KCihubyBjaGFuZ2VzIHNpbmNlIHYxKQoKIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCB8IDIgKysK
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKaW5kZXggM2U3NDUw
YzNmLi43NDRkMDFhNzYgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKQEAgLTEyOTksNiArMTI5OSw4IEBAIHBhdHRl
cm5Qcm9wZXJ0aWVzOgogICAiXnJ2ZSwuKiI6CiAgICAgZGVzY3JpcHRpb246IFJlY2hhcmdlIFbD
qWhpY3VsZSDDiWxlY3RyaXF1ZSAoUlZFKSBpbmMuCiAgICJec2FlZiwuKiI6CisgICAgZGVzY3Jp
cHRpb246IFNha3VyYVBpLm9yZworICAiXnNha3VyYXBpLC4qIjoKICAgICBkZXNjcmlwdGlvbjog
U2FlZiBUZWNobm9sb2d5IExpbWl0ZWQKICAgIl5zYW1zdW5nLC4qIjoKICAgICBkZXNjcmlwdGlv
bjogU2Ftc3VuZyBTZW1pY29uZHVjdG9yCi0tIAoyLjM0LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
