Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC6A7C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jun 2022 08:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CgS0CKxt6VBDCnSfs9gELDYnzgZaw/sJyVayPN5gOUQ=; b=USIGINcq7c9HpQ
	3sh5ZnlwPKmkVwQ9fKg3NeWDSy/WIOZ/rGoL9I9JvkuWO5NJKzTO5us9s4C8Fttcalr/i/M3T5AUk
	8B1LqJKuNEGMIuQrtGnGFp0xRkQJ5jdKIzEo49NDamQXa90ooVmWlRI+ucCQWGFquCgYQNruT6iyh
	43+gbT8pao8LhOSp+Z0/HfMckvYiXdwpbb9ExCYTx1ggRCViyMOZP+qPL5y3uSguQkREeGwz+yA6I
	HABevsBEHMzoizW7Xd3SG95mkSnnu5p/udNcapPJAIsUA3AIDde3oRb5kPEoNIVeSSQ2hrmu5bZc2
	jBY6T8CeKsgyLQlJqpSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyqqh-00Brp1-EI; Wed, 08 Jun 2022 08:15:31 +0000
Received: from mail.puregrowthonline.pl ([51.38.124.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyqqd-00Brlk-Dy
	for linux-rockchip@lists.infradead.org; Wed, 08 Jun 2022 08:15:29 +0000
Received: by mail.puregrowthonline.pl (Postfix, from userid 1002)
	id DD121A28ED; Wed,  8 Jun 2022 08:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=puregrowthonline.pl;
	s=mail; t=1654676125;
	bh=CSKXLMgcdpWkXuTgJn5+jsCVobtU9JEF4vCnS5z6McM=;
	h=Date:From:To:Subject:From;
	b=BEwD7s1KEatNJO2XGBVk/EIPNUCyumDWIWeHkYJnBLufuRZ1n9ubF2jKuc2qvrHXN
	 K8NnkRLmCHBnfWdz547Vxm3/myM2lxMhIfq7/FrYek92XLBlUs8PSwRTcCuCtwxwHd
	 nm/JQKI2BGyVJSq1RhV71zufwLBS3Kki3fPrvdqru6m3BXTup12CwdjI6jjDNaiq8j
	 /JMQ+BNnt9X3nBHhznQ2pdm/9FpMCHy3CmYQic0kQQcJ5//z1hl7xbJ7+/gNKKnJU0
	 /wT/7F6Oz4A2zVQw2vLlcCDIE1WHyNPeTUpBwFeMRqauIsWeCGBki2BoZb0BZFb+15
	 WWt4tP0rOavuA==
Received: by mail.puregrowthonline.pl for <linux-rockchip@lists.infradead.org>; Wed,  8 Jun 2022 08:15:09 GMT
Message-ID: <20220608064500-0.1.41.cz2p.0.iqei3uvgdo@puregrowthonline.pl>
Date: Wed,  8 Jun 2022 08:15:09 GMT
From: "Wiktor Nurek" <wiktor.nurek@puregrowthonline.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Nap=C5=82yw_Klient=C3=B3w_ze_strony?=
X-Mailer: mail.puregrowthonline.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_011527_686475_4E9480B9 
X-CRM114-Status: UNSURE (   1.12  )
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

RHppZcWEIGRvYnJ5LAoKY2hjaWHFgmJ5bSBwb2luZm9ybW93YcSHIFBhxYRzdHdhIG8gbW/FvGxp
d2/Fm2NpIHBvenlza2FuaWEgbm93eWNoIHpsZWNlxYQgemUgc3Ryb255IHd3dy4KCldpZHppbXkg
emFpbnRlcmVzb3dhbmllIHBvdGVuY2phbG55Y2ggS2xpZW50w7N3IFBhxYRzdHdhIGZpcm3EhSwg
ZGxhdGVnbyBjaMSZdG5pZSBwb21vxbxlbXkgUGHFhHN0d3UgZG90cnplxIcgeiBvZmVydMSFIGRv
IHdpxJlrc3plZ28gZ3JvbmEgb2RiaW9yY8OzdyBwb3ByemV6IGVmZWt0eXduZSBtZXRvZHkgcG96
eWNqb25vd2FuaWEgc3Ryb255IHcgR29vZ2xlLgoKQ3p5IG3Ds2fFgmJ5bSBsaWN6ecSHIG5hIGtv
bnRha3Qgendyb3RueT8KCgpQb3pkcmF3aWFtIHNlcmRlY3puaWUsCldpa3RvciBOdXJlawoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
