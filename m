Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68F6AC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Dec 2022 21:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=enJJCeZISf6w0RrddKEQh/nYzyJlgZLqJnoXaifh4w4=; b=PnbkUYx30JUIbs
	wuibF0qbZRf8J0Imjp3jlfZuWfSFCzn8MWh/KV+qr8MCu7tzXzP3KjOzk8q2t7COuzSC7hlb3J2O3
	bIdIbXl54uV+xrUfpkIZ/d88EjqCv+NK5FfsHARKMVAq/4yuTA6TaLI7Y277Pfv1DLYZAHnA+bCIf
	ukq34GS1C2G34Tbk19NUmnKtdetBApvT+Txpoy4SONVcRY/GXsgztV6X4Z+6DNaFtYt6txeNlL94W
	lMjHmWAmP748WPt7hb6D25FwzirdWayOnyKeny8P214VpVzABGYVJshCyYCIkQowLycq7pltklgKV
	zvTPBcxS4sQ7HQsxZs1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAHxS-00Gf9k-6l; Tue, 27 Dec 2022 21:58:02 +0000
Received: from [59.16.217.6] (helo=savemail.savezone.co.kr)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAHxN-00Gf2P-2p
	for linux-rockchip@lists.infradead.org; Tue, 27 Dec 2022 21:57:58 +0000
Received: from savezone.co.kr (156.0.212.38) by savemail.savezone.co.kr
 (2002:3b10:d906::3b10:d906) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 28 Dec 2022 06:57:37 +0900
From: Jacques BOUCHEX <sqladmin@savezone.co.kr>
To: <linux-rockchip@lists.infradead.org>
Subject: Re : Bonjour,
Date: Tue, 27 Dec 2022 22:56:22 +0100
Message-ID: <20221227225622.4E5CD2EA77537452@savezone.co.kr>
MIME-Version: 1.0
X-ClientProxiedBy: savemail.savezone.co.kr (2002:3b10:d906::3b10:d906) To
 savemail.savezone.co.kr (2002:3b10:d906::3b10:d906)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_135757_198162_1E6852E0 
X-CRM114-Status: UNSURE (  -1.95  )
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
Reply-To: jacques_bouchex@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Qm9uam91ciwKRMOpc29sw6kgcG91ciBjZXR0ZSBmYcOnb24gZGUgdm91cyBjb250YWN0ZXIsIGpl
IHZpZW5zIGRlIHZvaXIgdm90cmUgCnByb2ZpbCBldCBqJ2FpIHBlbnPDqSBxdWUgdm91cyDDqXRp
ZXogbGEgcGVyc29ubmUgZG9udCBqJ2F2YWlzIApiZXNvaW4uIEVuIGJyZWYsIGplIG0nYXBwZWxs
ZSBKYWNxdWVzIEJPVUNIRVgsIGQnb3JpZ2luZSAKZnJhbsOnYWlzZS4gSmUgc3VpcyBhdHRlaW50
IGQndW5lIG1hbGFkaWUgZ3JhdmUgcXVpIG1lIGNvbmRhbW5lIMOgIAp1bmUgbW9ydCBjZXJ0YWlu
ZSwgdW4gY2FuY2VyIGR1IGNlcnZlYXUsIGV0IGplIGRpc3Bvc2UgZCd1bmUgCnNvbW1lIGRlIHZp
bmd0LWNpbnEgbWlsbGlvbnMgY2lucSBjZW50IG1pbGxlIGV1cm9zICgyNS41MDAuMDAwIApldXJv
cykgcXVlIGplIHNvdWhhaXRlIHJlbWV0dHJlIMOgIHVuIHRpZXJzIGZpYWJsZSBldCBob25uw6p0
ZSBwb3VyIApzb24gYm9uIHVzYWdlLiBKJ2FpIHVuZSBlbnRyZXByaXNlIHF1aSBpbXBvcnRlIGRl
IGwnaHVpbGUgcm91Z2UgCmVuIEZyYW5jZSBldCBkYW5zIGQnYXV0cmVzIHBheXMuIEonYWkgcGVy
ZHUgbWEgZmVtbWUgZXQgZGV1eCAKYWRvcmFibGVzIGVuZmFudHMgaWwgeSBhIDEwIGFucyBkYW5z
IHVuIG1hbGhldXJldXggYWNjaWRlbnQgZGUgbGEgCnJvdXRlLiBKJ2FpbWVyYWlzIGZhaXJlIGRv
biBkZSBjZXR0ZSBzb21tZSBhdmFudCBkZSBtb3VyaXIgY2FyIAptZXMgam91cnMgc29udCBjb21w
dMOpcy4gVmV1aWxsZXogbSdlbnZveWVyIHVuIGNvdXJyaWVsIMOgIApsJ2FkcmVzc2Ugc3VpdmFu
dGUgOiBqYWNxdWVzX2JvdWNoZXhAeWFob28uY29tIFF1ZSBsZSBTZWlnbmV1ciAKdm91cyBiw6lu
aXNzZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
