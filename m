Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896F5606A326
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 07:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Mmeg1Cml;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=xsOO99IC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=PqmIG5rWX6LAg/4ha1BuGdZ4efeGsNrhEz0cfeiEmMQ=; b=Mmeg1CmluGkGEyUdJSxhEg1Q54
	GNS6eK0bdY8SqP8qlUzqG7eTRrDNllkUcmTB4uOuNSCFQNzHqnEcdIqC61nUvelLmWdSERhuJYoD4
	WmaYkOzCQu5txRl7Q2J62pymSyWXcgJzbCgJQ+qEsFZtdPhNgSn4c6+uw5E8Zk1XXK3ZFpeGbsSNF
	EXRvl8meioJUT2tXDBDXjYg7b/EORXpAHR8p8id+KMJunnSX3Kg7bsxaNPwrONrjVdfD4YA4j3/Cn
	jBmhZViPhyGv1pOSgXwxJaF8WhSxCoraiHCaJs7c0zEaAFpgt4u0/MO06qCwnJzDseU7sUocx2vgh
	fEY1toRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMhAS-0000000B0VB-2OpB;
	Fri, 30 Oct 2026 07:36:52 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMhAP-0000000B0UD-3V6g
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 07:36:51 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4a214af2076so2144425e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 00:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793345807; x=1793950607; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zyVM5qTzy2De10MnH1DSqnYzP+ppEdRoaIvfy2pZmrI=;
        b=xsOO99ICnEEGfaqmt+EvDTaxn+HfcKu83C8HwuiDpg9SaS+JJmtVto7xCuujiGvDB0
         4iSPzaCNl17POuGtMJzxundZyHbbIcL+QRYqW9P7udxjxbKvrQpgiQ31qXrx+FyPlcnk
         4pmAqoWJhbu/kv4X1yEASeB2UZvcLFGSkhwdnTAuiyqTCjaGiNWpV9Xy8a5MHwALfEhK
         u+Oyt/splcDhRWH4+YhcDGtQTVEEQC3UndfZbDmFzVFYu4KUYrHXbuy/e2cDj44FHQEX
         B4OllRVE0ApRibmInskZIOdxlOUKQhdJKKRMrnQhKqaMD7kyP0vlwOoHTqfQ0XxsC341
         g9TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793345807; x=1793950607;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zyVM5qTzy2De10MnH1DSqnYzP+ppEdRoaIvfy2pZmrI=;
        b=EMEiGHFXVk6P4eUTBSnVPFev9OGELlAqaLRE2NTIhY03wZlahGG8BtJymBdVKi6QJW
         IASRB3Qa5SO7o+rjfoO1gliSiooIAUEByPCTuqENcCWLHBOch5u18YnRsjUobl7UhBvv
         ay3NEk1QP0C1jceV4+VngfBvTTQWVsKWReobB6fTwXMIHmSLsL94cV93z3DEsgVX/Uhu
         c1pRXbhfwN9WM8SEwmXAziV9K3fxdeQEk49RFMvtBRNDVk9bXv9hZH9CpiZ7kzmMrXPF
         RnJd2ah7xmSJjKyCWfTkycrJj543WvuHHBY+afioRZbhVfRq+Gi5T2NM9UKisSYYXW7p
         j2jA==
X-Forwarded-Encrypted: i=1; AKwUvBx80riZXBsiaDbWMXaNR8ZwfWyB4fba4QZcvW+yPmrzjhpZepBcTaHKWkEYsJF89tGbWCevdFJhD2tTHp2VbQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYIDqqbz8zCJbwGbHULs07eZLT5LHmcmmBr6ig8NeBK2b8C6/gFe
	etaGDBv2E8URoE8WDZGq/3KWdRDwlqQlQhqomglxZUFfGF69h5s+uVCp
X-Gm-Gg: AYBFou2GmhruBqccXaG26XV8YOpEh26deakwFtELIg7/RzX5WYwO1wvqg7XLzNBFUXa
	ufqqC6OJ7mOAOWLFbiQixMz3C8iz7m8sDb7m5TUI63fMtLYeKf3FANLO8shBF8O9keJVdphKcT0
	MHXh+tOHZLLdONjNKLDPNvLRC2funQVkmfdYPyslOFSUjqe6dJQQoez0nVrog6c4GWU2GGCXtvc
	mIJLGs39Aye0pWxidUkmXAnQ9oUleHqeEQ/zOwd5rpTtVbz2VkW8Ia/Ub2nKFguoyU4G2AtV+fY
	S/EKZ74t7IdwqocOXhzhYmhH1i9sDqmx543nP34sVqWEF4hg43soZuJNAzAMWYbylDmbqZbIXLH
	9GeY6Igi4YGmGLOxc+iR1z1UgCYoO2HbKZWqjkxruyYf74kyheqH/2pDczi2hSAWOHV6/r0Q6UM
	6ahOWjgW1aYK0HaKeN9CjLU0JEndzLjGPj3YO42XCjRvDvEaGDr1s/RNMURMNptkYTdAcWlju2N
	2l5vimMTi/qwExvWUriqgKp4W43bp49d6r+Mk9QKdyCFpzKgvYKRm6RqlhdRiLYp5hn35h/qEgF
	hpEe2TXFwCCMK7aIJoR6TEMzCtsEiXqRnvi15J71YH7NpmJOZtqxyjGLUQ==
X-Received: by 2002:a05:600c:4585:b0:4a7:8fe8:130c with SMTP id 5b1f17b1804b1-4ac1889d5a1mr28432205e9.28.1793345807114;
        Fri, 30 Oct 2026 00:36:47 -0700 (PDT)
Received: from thinkpad.hgw.local ([159.146.110.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b728f9sm1721764f8f.10.2026.10.30.00.36.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 00:36:46 -0700 (PDT)
From: =?UTF-8?q?Yal=C3=A7=C4=B1n=20Can?= <ylcncn@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Brian Masney <bmasney@redhat.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] clk: rockchip: rk3066: uart0/1 pclk comes from hclk_ahb2apb
Date: Fri, 30 Oct 2026 10:36:38 +0300
Message-ID: <20261030073638.164388-1-ylcncn@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_003649_950297_0ACE5A62 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.1 (/)
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
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	HK_RANDOM_FROM,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gcmszMDY2YSwgdWFydDAgKDB4MTAxMjQwMDApIGFuZCB1YXJ0MSAoMHgxMDEyNjAwMCkgc2l0
IGJlaGluZCB0aGUKQUhCLXRvLUFQQiBicmlkZ2Ugb2YgdGhlIGNwdSBidXMsIGFzIG9uIHJrMzE4
OCwgYnV0IHRoZWlyIHBjbGsgZ2F0ZXMgbmFtZQpwY2xrX2NwdSBhcyBwYXJlbnQuIE5vdGhpbmcg
dGhlbiBob2xkcyBoY2xrX2FoYjJhcGIgKENMS0dBVEVfQ09ONCBiaXQgOSksCnNvIGl0IGlzIHN3
aXRjaGVkIG9mZiBhcyB1bnVzZWQgYXQgbGF0ZSBpbml0IGFuZCBib3RoIFVBUlRzIHJlYWQgYmFj
ayBhcwphbGwgemVyb3M6IDgyNTAgYXV0b2NvbmZpZyByZXBvcnRzIFBPUlRfVU5LTk9XTiBmb3Ig
dWFydDAgYW5kIGEgc2VyZGV2CkJsdWV0b290aCBjb250cm9sbGVyIG9uIGl0IChicmNtLGJjbTQz
MzAtYnQpIHRpbWVzIG91dCBvbiBldmVyeSBjb21tYW5kLgoKVGhlIHZlbmRvciAzLjAga2VybmVs
IHVzZXMgdGhlIHNhbWUgcGFyZW50LCBidXQgbW9kZWxzIGFoYjJhcGIgYXMgYQpkaXZpZGVyIHdp
dGhvdXQgYSBnYXRlLCBzbyBpdCBpcyBuZXZlciB0dXJuZWQgb2ZmIHRoZXJlLgoKTWFrZSBoY2xr
X2FoYjJhcGIgdGhlIHBhcmVudCBvZiBwY2xrX3VhcnQwLzEsIGFzIHRoZSByazMxODggdGFibGUg
YWxyZWFkeQpkb2VzLgoKVGVzdGVkIG9uIGFuIFJLMzA2NmEgYm9hcmQgKE1LODA4QiwgQkNNNDMz
MCBCbHVldG9vdGggb24gdWFydDApOiBiZWZvcmUsCkNMS0dBVEVfQ09ONCByZWFkcyAweDYyMDAs
IHVhcnQwIHJlZ2lzdGVycyByZWFkIDAgYW5kIHR0eVMwIGlzClBPUlRfVU5LTk9XTjsgY2xlYXJp
bmcgYml0IDkgYnkgaGFuZCBtYWtlcyBpdCBwcm9iZSBhcyBhIDE2NTUwQS4gV2l0aCB0aGlzCnBh
dGNoIHVhcnQwIHByb2JlcyBhcyBhIDE2NTUwQSBhdCBib290LCBoY2lfYmNtIGxvYWRzIGl0cyBm
aXJtd2FyZSBwYXRjaCwKYW5kIExFIGFuZCBCUi9FRFIgc2NhbnMgZmluZCBvdGhlciBkZXZpY2Vz
LiB1YXJ0MSBpcyBub3Qgd2lyZWQgb24gdGhpcwpib2FyZCBhbmQgd2FzIG5vdCB0ZXN0ZWQuCgpG
aXhlczogMmMxNDczNmM3NWRiICgiY2xrOiByb2NrY2hpcDogYWRkIGNsb2NrIGRyaXZlciBmb3Ig
cmszMTg4IGFuZCByazMwNjYgY2xvY2tzIikKQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtb3B1
cy01LTUKU2lnbmVkLW9mZi1ieTogWWFsw6fEsW4gQ2FuIDx5bGNuY25AZ21haWwuY29tPgotLS0K
IGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMxODguYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9jbGsvcm9ja2NoaXAvY2xrLXJrMzE4OC5jIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJr
MzE4OC5jCmluZGV4IDMxOGM4ZGRjOC4uNjgwYzMzYTYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2Ns
ay9yb2NrY2hpcC9jbGstcmszMTg4LmMKKysrIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJr
MzE4OC5jCkBAIC02NDksOCArNjQ5LDkgQEAgc3RhdGljIHN0cnVjdCByb2NrY2hpcF9jbGtfYnJh
bmNoIHJrMzA2NmFfY2xrX2JyYW5jaGVzW10gX19pbml0ZGF0YSA9IHsKIAlHQVRFKFBDTEtfVElN
RVIxLCAicGNsa190aW1lcjEiLCAicGNsa19jcHUiLCAwLCBSSzI5MjhfQ0xLR0FURV9DT04oNyks
IDgsIEdGTEFHUyksCiAJR0FURShQQ0xLX1RJTUVSMiwgInBjbGtfdGltZXIyIiwgInBjbGtfY3B1
IiwgMCwgUksyOTI4X0NMS0dBVEVfQ09OKDcpLCA5LCBHRkxBR1MpLAogCUdBVEUoUENMS19HUElP
NiwgInBjbGtfZ3BpbzYiLCAicGNsa19jcHUiLCAwLCBSSzI5MjhfQ0xLR0FURV9DT04oOCksIDE1
LCBHRkxBR1MpLAotCUdBVEUoUENMS19VQVJUMCwgInBjbGtfdWFydDAiLCAicGNsa19jcHUiLCAw
LCBSSzI5MjhfQ0xLR0FURV9DT04oOCksIDAsIEdGTEFHUyksCi0JR0FURShQQ0xLX1VBUlQxLCAi
cGNsa191YXJ0MSIsICJwY2xrX2NwdSIsIDAsIFJLMjkyOF9DTEtHQVRFX0NPTig4KSwgMSwgR0ZM
QUdTKSwKKwkvKiB1YXJ0MC8xIHNpdCBiZWhpbmQgdGhlIEFIQi10by1BUEIgYnJpZGdlLCBhcyBv
biByazMxODggKi8KKwlHQVRFKFBDTEtfVUFSVDAsICJwY2xrX3VhcnQwIiwgImhjbGtfYWhiMmFw
YiIsIDAsIFJLMjkyOF9DTEtHQVRFX0NPTig4KSwgMCwgR0ZMQUdTKSwKKwlHQVRFKFBDTEtfVUFS
VDEsICJwY2xrX3VhcnQxIiwgImhjbGtfYWhiMmFwYiIsIDAsIFJLMjkyOF9DTEtHQVRFX0NPTig4
KSwgMSwgR0ZMQUdTKSwKIAogCUdBVEUoUENMS19HUElPNCwgInBjbGtfZ3BpbzQiLCAicGNsa19w
ZXJpIiwgMCwgUksyOTI4X0NMS0dBVEVfQ09OKDgpLCAxMywgR0ZMQUdTKSwKIAlHQVRFKFBDTEtf
VFNBREMsICJwY2xrX3RzYWRjIiwgInBjbGtfcGVyaSIsIDAsIFJLMjkyOF9DTEtHQVRFX0NPTig0
KSwgMTMsIEdGTEFHUyksCi0tIAoyLjQ3LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
