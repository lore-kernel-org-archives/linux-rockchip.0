Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56785C6FD20
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 06:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAkdNwPT632SpPv1wJH8C/simvMx3pRxk84r3N75JFU=; b=vUhogksabOaduO
	gQo6Uz8tMmmZymS3eDZNheUaXKG+xoeQfn8HiCg6OvKeAqDkRNZOU0JzFw0nnwK7e7fda0SJB5/DI
	dg3dpF6VPNmIRVZTVERgpOkHRIhV+hf9l9YPFbP4lGHB7Kzzu8FpnA55tlNotpLRURdfPm/RUf/Iu
	1f/jQ9F+YWWN3+Y7XGeU2yr64wZ4MUL1qsCbIFBcDGW1boPDEFOLE8oAVoIndYz2RWkiV46RZg1zF
	yN0b0KXL2UMpiP2ej0ry+vWptLJ68bZb/QHSMBgvfddagOWtzIRwQoYFPwiuUFJG/+BGSUliOMqUl
	C0dANcJi5sLlJhLo0yiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfb3o-003gwB-0w;
	Fri, 24 Mar 2023 06:38:00 +0000
Received: from mout.web.de ([217.72.192.78])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfb3l-003gvp-2q
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Mar 2023 06:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de; s=s29768273;
	t=1679639870; i=markus.elfring@web.de;
	bh=7CtjB1QGe7Czwsffh1TLFcUErEMc1CiXqIwFOA2vKLE=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
	b=DmQpMLAv6hupH8Bi0Uz/soUMq0gHTcJgdl21BqO4qBKdPPjeD8XpvZ2o1Ia6plYfY
	 GqMINO0E2GjcUiNx7cjwNJtR+nq9Z8R34kd59jWTYyoA+mCox06WWuqqXfDTf9lHJ2
	 o83eAp20zrGBjHKMRdVpgLo87iRJ55yYZoCzIzlfZYavGU/FbVb9wIwxuOvEFiG/eF
	 T7Atln/pNV4GD4R15jlrC5YjycCbFfaRl4iO3r5HtUXT+YOt0r2SR4FpC/0WsTX/vC
	 6quk/EB9gHtzi0hP5bHvxjcP1mbWAHU9e0amu0C52Jh7TzoZZu6Z2bEPS2vG8u7aJt
	 PK/iIZeQnH60Q==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.81.83]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MLARU-1pxgAm11gQ-00IAaO; Fri, 24
 Mar 2023 07:37:50 +0100
Message-ID: <69159492-dced-a082-5f7e-3d8d0e880f58@web.de>
Date: Fri, 24 Mar 2023 07:37:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] media: verisilicon: Simplify error handling in
 tile_buffer_reallocate()
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kernel-janitors@vger.kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230323131704.414281-1-benjamin.gaignard@collabora.com>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20230323131704.414281-1-benjamin.gaignard@collabora.com>
X-Provags-ID: V03:K1:xSWA8/yQRtCDdl375aoFbBiMrpeqVN77ZDe438gLFbRy7uOpEVl
 xGOGIy3vHLoLZ06KRAHjvVCqF6HLrYbK2EN2WtftFbCwP2oCLY6DY5MEVJ1zeDqUkVbTkaO
 qC7GPmUe2G0mOuqxhaBKqc3Ucfgq1E++zWoAGZU4+y7qJsroLdljT6Vb+AAeB5f2nEnl2o8
 ZF9uD7zGQHDlSmjB3qFxQ==
UI-OutboundReport: notjunk:1;M01:P0:CfKlGHVzK9M=;ilyKDRLAtbLIor0K6MoDPDk7Izf
 jW+dhUrj2svceeUAe8c7e975NrsMmQgMIsu5Shddczk550rZoXsBhB6a4WIhxLfs/dgoA7fRa
 M66VcVGW7gHwwD3N0RCsMgTObsofmHet9sCt3aZK3LXvGzl1MMOC4MtOMQ8lB4qR7SH0/Mscd
 /c0ZDJ+6we3SLZUqlVir3DRzfMDRiyHIILSPWX767eDewXknGQuVAHWB+TLa+ZleTVP4PimJy
 do2TQRrIl8geFKXu/kiRlbR/SLtGVpn5drh26QOSkT2BB+hTHRLdgokho7LzCazMNTtXerUB/
 O/srilhdb/xtGq9kOa56shdbflN1PQCXEp5hl2WGggyFuAIJG8VefP2CEmTI6n9bG4zDJRyEa
 SIiaC/w2jBJ3VoMexideMytFmhVDkvXWVlWnfz99ig6tv6pgKJqoWmjdWiAB4l/A2v+Y/1mHp
 v02RMzAVFNz6EwEhAmsVL5xoUfoCEnXcFzWwoEPAcTcPCcjsSjQxKx0CmhiHtcAcjDM8mdK3e
 /fcQ+2vIRED1RlH6LAxZAMCcVCgbYUKA6qR/Gzz6JwuxbLbtnJGY53zS/Eq2CtVuCLqc//6QR
 4+Kx6GDx0yPgegGgDuhWUr1yexIgnJcE96rc9gJertPyL70CQQ6kE2o+d3XytJn4YxQqGsK95
 Cf1JNRAGkBVmP8UDtOIjlVegUWp2BvbBA2X0SMUgIFWZXG1abR41HZKh9YroSM/OT/NOURO+T
 C3vOK0pfd542KlMhQcjUaFK3chkdjgkle7SVSOqx395s7TdiqgGbnaY/YTcR4zHCg1pefyHZu
 JGyjV8K3jRgkd/MnT4Fl6ByYtabE5EYWM0zgQNvUwyrSjYiosQ5x3sNy/DJA1M2+nEP0qKteB
 7J6ecGd9D9reqnmO/FLuKDsf8vlXU8Vokt50MbeorNPzEqtjWznlKCGSa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_233758_388520_97B69E6E 
X-CRM114-Status: UNSURE (   6.00  )
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

Cj4gUmV3b3JrIGFsbG9jYXRpb24gZXJyb3JzIGNhc2VzIGhhbmRsaW5nIHRvIHNpbXBseSBpdAo+
IGJ5IHJlbW92aW5nIHVzZWxlc3MgdGVzdHMuCgpIb3cgZG8geW91IHRoaW5rIGFib3V0IHRvIHVz
ZSBhIHdvcmRpbmcgbGlrZSDigJxTaW1wbGlmeSBoYW5kbGluZyBvZiBhbGxvY2F0aW9uCmVycm9y
IGNhc2VzIGJ5IHJlbW92aW5nIHVzZWxlc3MgdGVzdHMu4oCdIGZvciB5b3VyIGNoYW5nZSBkZXNj
cmlwdGlvbj8KCgo+IFJlcG9ydGVkLWJ5OiDigKYKPiAtLS0KPiAgLi4uL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19oZXZjLmMgIHwgMjMgKysrKysrKystLS0tLS0tLS0tLQoKV291
bGQgeW91IGxpa2UgdG8gYWRkIGFueSBsaW5rcyBmb3IgY29ycmVzcG9uZGluZyBpbmZvcm1hdGlv
bj8KClJlZ2FyZHMsCk1hcmt1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
