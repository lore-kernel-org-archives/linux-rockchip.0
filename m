Return-Path: <SRS0=PFct=EI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1100CC00A89
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 15:07:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A55CD20715
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 15:07:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zmauwLmv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A55CD20715
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n9MhIwb6jWZvqUCWArDUGEKbUC47GUdCluUlxPGzpSs=; b=zmauwLmvXYefraXlHh3kiFdB+V
	0jr/FWUQTkL6THgvLZJareXhTgSi0PDpQ+R2EqeokY6gJuojUoFiLM4zOARbBhmcIPi+hW8r8schh
	vV2A7/lthyBJh08jiesEeo6+fIlG6Q1Q0an8vnpEm4/U1Qg70knIFiFVwyhCmRaP7ty3vL23YvmBl
	4O34PpATJ2fc0G+tKueJshhqvJNMZ+EfROTSLnkrszx7EJDqOKUkKQeTCsaIzab+OBVWAhHbDszfp
	Erh/sF5fyQkP6o7c5EsInOQUlgXO/YJl4tUguEK4kA+q+gTcrRzML/82rn+OEHh8x+SBL50p9Pt1c
	+BJMzhKQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZbQM-0006qK-W7; Mon, 02 Nov 2020 15:07:11 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZbQJ-0006p1-71; Mon, 02 Nov 2020 15:07:08 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 32A40A6D999; Mon,  2 Nov 2020 16:07:03 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH] dt-bindings: arm: rockchip: Add Kobol Helios64
Date: Mon,  2 Nov 2020 16:06:58 +0100
Message-Id: <20201102150658.167161-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201102_100707_401786_D5F032D3 
X-CRM114-Status: GOOD (  10.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RG9jdW1lbnQgdGhlIG5ldyBib2FyZCBieSBLb2JvbCBpbnRyb2R1Y2VkIHJlY2VudGx5IGluCnJv
Y2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2NC5kdHMuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xl
aW5lLUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3JnPgotLS0KSGVsbG8sCgpIZWlrbyBwb2lu
dGVkIG91dCBpbiBpcmMgdGhhdCBJIG1pc3NlZCB0aGlzIGJpdCB3aGVuIHN1Ym1pdHRpbmcgc3Vw
cG9ydApmb3IgdGhlIGhlbGlvczY0IGJvYXJkIChsYXN0IHN1Ym1pc3Npb24gc3RhcnRpbmcgYXQg
TWVzc2FnZS1JZDoKPDIwMjAxMDE0MjAwMDMwLjg0NTc1OS0xLXV3ZUBrbGVpbmUta29lbmlnLm9y
Zz4pLgoKQmVzdCByZWdhcmRzClV3ZQoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9hcm0vcm9ja2NoaXAueWFtbCB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L3JvY2tjaGlwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jv
Y2tjaGlwLnlhbWwKaW5kZXggZGIyZTM1Nzk2Nzk1Li41YjFkYmExYTliYjYgMTAwNjQ0Ci0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAorKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKQEAg
LTM3Niw2ICszNzYsMTEgQEAgcHJvcGVydGllczoKICAgICAgICAgICAgICAgLSBraGFkYXMsZWRn
ZS12CiAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMzk5CiAKKyAgICAgIC0gZGVzY3Jp
cHRpb246IEtvYm9sIEhlbGlvczY0CisgICAgICAgIGl0ZW1zOgorICAgICAgICAgIC0gY29uc3Q6
IGtvYm9sLGhlbGlvczY0CisgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMzk5CisKICAg
ICAgIC0gZGVzY3JpcHRpb246IE1lY2VyIFh0cmVtZSBNaW5pIFM2CiAgICAgICAgIGl0ZW1zOgog
ICAgICAgICAgIC0gY29uc3Q6IG1lY2VyLHhtczYKLS0gCjIuMjguMAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
