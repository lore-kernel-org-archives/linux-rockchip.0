Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F84606A31C
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 05:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4Z8U769j;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=peZlKzYT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=O5vg836veAiJmp8Y+meqqolkf6swgmS2HFmZHeAGEDQ=; b=4Z8U769jCEHMxbjHsJLkYd0mVC
	dHGrL4KAeWoa3jtAN9wmYCBm/ZFprS5YUwBM7EXosYFmD6I5I1n3na1O3sC9l+j3MWQwGlIdwpWOV
	yIf0AeATxXKbozOqNY8X5+032ni+iQqt/gYefeLfNTDWoerhggoA7rKyqoH91FSiysAXxy5t1TUqO
	JAfXi7g9zyliosSKHdNKoTsgiqEhD7q/wbeaZVqmk3NQc45iNbaavzFlBsGyigDANS5N7pz6gm8DU
	3QauShlqZQgvF81NGgjWv3ussEuBZO7aEB6XaZMOgKXeozTs2A4ro3fcQrH9Z6pZ7SMhtSbAEW0J2
	D86GBisA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQI1q-0000000HQjh-0c8K;
	Mon, 09 Nov 2026 05:34:50 +0000
Received: from xmbghk7.mail.qq.com ([43.163.128.52])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQI1k-0000000HQiV-2nfg
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 05:34:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1794202477; bh=kQpuAErIv+UqR3sTl8YKiWpOrBLtMt4g0lcfxcV1WyY=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=peZlKzYTjYDwJvSNZ3VmOZAIF6Sx3xf3vObWCwj1lQvnPJFpf2lbJ8eE3XJRVfNV7
	 oyXOa1QB8UHCZYk1goySu+lmlKEh74X9653Ph1blVJ81AB4j8HjjG+rD5SCv/3I7f8
	 k9sj2kmiMgd3LgeHWQ/yHId318mhVx3XJLX5MngU=
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-XMAILINFO: M/58+Pp9IcPFDTqfHqH2QdduhlD7tMwRrTvEjLql0ggrD6oabYgAOVsZ+qIzgD
	 pqzxmkWklRPiY/898n91lXVe0cVfNOqZmGVlRIQrh7t/TGGq7rL7GYjMms+xnspJMF9AkwKTQIv+Y
	 5JX32Kp4e95zagNv2xcoU8sisyJmqb4pwDVSH5Au8EdTvIqbHCVURFAYSFPeO5HFBXq/WUw8UoNwm
	 jrr/ZMhvTe8QVX0Bu9GoopTOntPrSLPhM6Pb2cYqFWSCQ8dhv1rRou2cES/r7U15X8OOF6a7xR596
	 yw4aEdfLo5Cc/V/NceqmYbh/cDqh3erxwcNi50CdEI2YeUG/I4KdEZ4s7aa8IR6n+3jgAaZhceUcv
	 sHaRx/TKjiwZeTOPL/dZlE6DylSrpxJfTb6o5noOqYOryAWnW5ulxUfZnXEfC4hZS7PJINJGnr5Lm
	 LCtzMn4Y3y63vntaAPUbfCdb2WSe8jtCzp4IEN5tWegt9xeFnC3Ibyh9uQGzWE11L/GZfHv7dzqCL
	 uo+xTexOHfMtQRVgUXH+Hj7UKC+cwPWZWULkS91e9VW5QkMXTA+yXfPphGB7n/2PevZTiSzUozPOA
	 Us1YQZySK/kzR/p1y/+otsg/gTnZ8GcAhlu8cW9HGBWMCjw95ao5LnC7zFvMrtUTxbnIhyumevk2S
	 cw5wr/MWaE6s6xdca25KletEO8oYQbj//DzT8ch/6WI14881tX5bk4S+py/Qxch/RvcZO+X3vvlxr
	 Gyr6B8sDZY9Igrwqdjt+w82y89oR+x/0gISR+Ob0+eFgA2WZKjB3O2UrHFa2yezLmlHt1remkCAFO
	 66EWL4LjvaCOeBtcjTGT3w1P77oclo8l1a/YifbIQnZCvb8vvw3aY28WgO6lCa6ukD8jiUxBCSBd1
	 f0jM1xA5fJQ0SPkMsOR2i1/mQlaYelBgtI+mB7m2xu1ZC+6qLidm91vtvNLrqLEd7r2KGE/B5ffqu
	 4jjzfEA2u2mJKJChvJnO5DCDgmMgyrXQWBLtHV48oT3JIraIfmlNMXdBx25eUA5iO1P5x6o9taibr
	 YYhdUKmWPABIXl1H+uUSM3H76vRK+1fFD91Oia8ZhjPK/+kPorx0oZQpZYIqbmT1al0rlzh3uQAul
	 wHZTRjMm1wL5LA==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?Q3VuaGFvIEx1IHZpYSBCNCBSZWxheQ==?=" <devnull+1579567540.qq.com@kernel.org>
Cc: "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH net v8 09/10] can: rockchip_canfd: prevent timestamp work from rearming after bus-off
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Mon, 9 Nov 2026 13:34:36 +0800
X-Priority: 3
Message-ID: <tencent_50BFA65A1A3899AA84AC11AE800E44283F07@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261108-rockchip-canfd-restart-close-v8-0-3e7a23fd9eae@qq.com>
 <20261108-rockchip-canfd-restart-close-v8-9-3e7a23fd9eae@qq.com>
	<20261108-rebel-cicada-of-modernism-a932b9-mkl@pengutronix.de>
In-Reply-To: <20261108-rebel-cicada-of-modernism-a932b9-mkl@pengutronix.de>
X-QQ-mid: xmsezb41-0t1794202476t5wzpjm50
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_213445_026642_8FD393B6 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -1.8 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgo+ID7CoFRoZcKgYnVzLW9mZsKgSVJRwqBjYW5jZWxzwqB0aW1lc3RhbXDCoHdvcmvCoGFz
eW5jaHJvbm91c2x5LsKgSWbCoHRoZcKgd29ya2VyCj4gPsKgaXPCoGFscmVhZHnCoHJ1bm5pbmcs
wqBpdMKgY2FuwqByZXF1ZXVlwqBpdHNlbGbCoGFmdGVywqBjYW5jZWxsYXRpb27CoGFuZMKga2Vl
cAo+ID7CoHBvbGxpbmfCoHdoaWxlwqB0aGXCoGNvbnRyb2xsZXLCoHJlbWFpbnPCoGJ1cy1vZmYu
Cj4gCj4gV2hhdMKgYWJvdXTCoHVzaW5nwqBkaXNhYmxlX2RlbGF5ZWRfd29yaygpLMKgd2hpY2jC
oGF2b2lkc8KgcmUtc2NoZWR1bGluZy4KPiAKPiBGb3LCoGFuwqBleGFtcGxlwqBzZWU6Cj4gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYxMTA4LWdzX3VzYi1maXhlcy12NS02LWQ1MmRk
NDk0MGQ0NkBwZW5ndXRyb25peC5kZS8KClRoYW5rcyBmb3IgdGhlIHN1Z2dlc3Rpb24gYW5kIHRo
ZSBleGFtcGxlLiBJJ2xsIHN3aXRjaCB0byBkaXNhYmxlX2RlbGF5ZWRfd29yaygpIGluIHRoZSBu
ZXh0IHZlcnNpb24uCgpJJ2xsIHJldGFpbiB0aGUgbG9jayBhbmQgYWN0aXZlIGNoZWNrIGFyb3Vu
ZCBjb3VudGVyIHJlYWRzLCBzaW5jZSB0aGUgYnVzLW9mZiBwYXRoIHJlc2V0cyB0aGUgY29udHJv
bGxlciBpbW1lZGlhdGVseSBhZnRlciBzdG9wcGluZyB0aW1lc3RhbXAgd29yay4KCkJlc3QgcmVn
YXJkcywKQ3VuaGFvIEx1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
