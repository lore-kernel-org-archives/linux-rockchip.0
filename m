Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0DE2CFC273
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 08:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9wPWYZbUXbuajRVSb6m1ypkFBynSnv7Q5ySBduG7NIw=; b=N6DCHOAGypHFV4
	Di65GFSltLu+NEybz3kg9wzDdU2tDPwtC81x8tE3fv5JWYOOTuH/hHjTFlg8g04y1n4gL3TiuWVc1
	V1Vq8dOfsC0jEXmZzJTKBEidtVFC3fxQWOVAlDGgX9Yw8erfQWD4Z2eLnlfLmkCOXYsF/uJ094TEW
	JFZr+cbx5wz6ZrUk3gh5YecZ8k0E+U2o/GdIKS9us2hO8MI6UpC1/vQli1zXL9NkkuP9sNkRAz4qO
	gb/xG1ujz68/ytMrAMRlY6WS9hdsW06fEfJcoyy4BahTrIrUOD/E19AUoAoom6l6LN9330fOHj/1F
	lQJnV9jNN5ACRmWkLT2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0caL-00000007RN6-42n4;
	Tue, 15 Oct 2024 08:07:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0cUy-00000007QUQ-1NH5
	for linux-rockchip@bombadil.infradead.org;
	Tue, 15 Oct 2024 08:01:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=HDodNtmiQ0oQNph7sp+h4NRbkxw8d1NmRLmJ4HyiCoQ=; b=jOviCcufVKESKcMMJ1rK2rsKRC
	HtV0Zt2BcPUmw/FpQeImA2WYiY+WuJDNSr3Rxj3VzpjzFd6Mc6PQ+Lx0CQVI7ATISJ8XM3qKgRrcJ
	nCM1OktcuX/a1zzJOTs6ztKtdNC1RazcHwd7b4wfNpYp5z+ZIiXvPzFEJVHLE6eg0cKFOn03arEXO
	OWunzdglEvRhlo9MV5rHYfHHiHCxFl23/k8smMDfweZDiBoJWS4iSP7JNgkf0AffxUzFAbAap9kEv
	5diExP0kMONPj2nW12ax5GV7PEH07g8l+HC/FmW6sGms0+cC+BCl/PX8DBxqFnVr9cuJ7mZRE4BNR
	Hcd5gffg==;
Received: from mail.originatepro.pl ([162.19.155.125])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0cUs-00000006VV1-1qDY
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Oct 2024 08:01:42 +0000
Received: by mail.OriginatePro.pl (Postfix, from userid 1002)
	id DB3EE22F38; Tue, 15 Oct 2024 10:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=OriginatePro.pl;
	s=mail; t=1728979251;
	bh=HDodNtmiQ0oQNph7sp+h4NRbkxw8d1NmRLmJ4HyiCoQ=;
	h=Date:From:To:Subject:From;
	b=6B8sVmD1S2S2hFmNDHQp34aqBmxVsGt3rOOnsr+WhKaHrOn9ITUaP3HYLsvp1sgli
	 sFb9Yxd7C5+dQlecA3Rb5peJRrrubivZlajWOmXfEkI0own0nptc9qAQ/sWeIKunLq
	 i7zOwjWQeXIpf53ExNVXZSabF4VLNkwdadJ0mkQADyQfE2cMG1DzzJcETTFdkGXbMB
	 M35Viu/rKdlKHXtIdntrlfrUQid7AhW9LI95Rk5JhTZRm4x1QYIoT6LiFORyM46AyC
	 fp55Cokds+8CmjQEx+jmgO29DO3aWtXOJYk8ZI9uU4zwNAkaaEcUJ/OcAKs78il1AF
	 2fNpBvhJXzG3A==
Received: by mail.OriginatePro.pl for <linux-rockchip@lists.infradead.org>; Tue, 15 Oct 2024 08:00:50 GMT
Message-ID: <20241015084500-0.1.em.2eui8.0.s71md1m0dw@OriginatePro.pl>
Date: Tue, 15 Oct 2024 08:00:50 GMT
From: "Marcin Wojciechowski" <marcin.wojciechowski@originatepro.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Zam=C3=B3wienie_?=
X-Mailer: mail.OriginatePro.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_090138_625536_F358EDEC 
X-CRM114-Status: UNSURE (   0.58  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

V2l0YW0sCgpDenkgcG90cnplYnVqxIUgUGHFhHN0d28gYWt0dWFsbmllIG5vd3ljaCBrbGllbnTD
s3cgQjJCPwoKT2QgMTAgbGF0IHBvbWFnYW15IHBvenlza2l3YcSHIG5vd3ljaCBwYXJ0bmVyw7N3
IGJpem5lc293eWNoIHcgUG9sc2NlIG9yYXogemEgZ3JhbmljxIUuCgpQb25hZCAzMDAwIHpyZWFs
aXpvd2FueWNoIHByb2pla3TDs3cgemFyw7N3bm8gZGxhIG5handpxJlrc3p5Y2ggZ2xvYmFsbnlj
aCBrb3Jwb3JhY2ppLCBwb2xza2ljaCBzcMOzxYJlayBnaWXFgmRvd3ljaCBjenkgdGXFvCBuaWV3
aWVsa2ljaCBkemlhxYJhbG5vxZtjaSBnb3Nwb2RhcmN6eWNoIHNwcmF3aWEsIMW8ZSBqZXN0ZcWb
bXkgamVkbnltIHogbGlkZXLDs3cgYnJhbsW8eS4KClogd2llbG9tYSBmaXJtYW1pIHdzcMOzxYJw
cmFjdWplbXkgbmllcHJ6ZXJ3YW5pZSBvZCB3aWVsdSBsYXQsIGdlbmVydWrEhWMgc3RvcHkgendy
b3TDs3cgc2nEmWdhasSFY2UgdHlzacSZY3kgcHVua3TDs3cgcHJvY2VudG93eWNoLCBwb21hZ2Fq
xIVjIGplZG5vY3plxZtuaWUgdyBzcG9zw7NiIHBvd3RhcnphbG55IG9yYXogcG9saWN6YWxueSBw
b3N6ZXJ6YcSHIHBvcnRmZWxlIGtsaWVudMOzdyBiaXpuZXNvd3ljaC4KCkplxZtsaSBtYWrEhSBQ
YcWEc3R3byBwcnplc3RyemXFhCBuYSBvYnPFgnVnxJkgbm93eWNoIGtsaWVudMOzdywgemFwcmFz
emFtIGRvIGtvbnRha3R1IHp3cm90bmVnby4gIAoKClBvemRyYXdpYW0KTWFyY2luIFdvamNpZWNo
b3dza2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
