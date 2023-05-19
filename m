Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CB5CC7EE23
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 May 2023 12:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUVwQPxeZnkxEHxMxp8jDTjkC22uGWBz08HkZ81HBkI=; b=dbJxbcFjNK1wuO
	d9BZ952jsovYmWxr2jA59oBlmlDsBl9ye7Owdu6yB/KK50Cg4rfTwMKUizvVQVgbjEF/GjjRD2Z3o
	f7nvcDcEREoWVJt+ii4/HRIqTCy1B8yFSVnBgCIEMoqr4hB5PJp7sq1yf/8JdDw4Meaiz2kJ+w56f
	UfpthD3wLrbrKRzL+LVuKIxg+JSD8nt0htMrNSkQ8gR9ktGDVq7O+EILhRzWvHoMtXpP1GhwnugG1
	PKcsQxqiY+PxmWJvPOSwWNHgHZl8H02uh7oIcMIBlE0ABzIQFb80V45q9rR7MWIkmrgltEsYXKPYd
	0m5bZJ/5LvDXI3u4Nq5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzzPF-00GHc9-0e;
	Fri, 19 May 2023 12:40:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzzPB-00GHZx-2X;
	Fri, 19 May 2023 12:40:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A060F6573B;
	Fri, 19 May 2023 12:40:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03A8EC433EF;
	Fri, 19 May 2023 12:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684500020;
	bh=1F/eCrwSGc2hHPgPSPDKPCdMBjTHdEI3aAVVcnFlGww=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=eS1w3brs3WjLrMf0KjXfoutzueby77dJP7qLdW8uJVtwA8WB93XCeID3osPXNuBw5
	 K3OaslOpC8Aw/kRYteSRt4xejEfWDpRKch+n0N8hhRgBtMirgQQaoXf2pJZuniRPT7
	 VNDiZtDgFqYwd+1Ls/fsuYfRMBNPvualzRJOF6mAOpi+CS1yMZC6rJzkagzJwae/+x
	 nhMMjr3R/wV+BskpAP/JchBch5z09C7ygwnWQ+RXeRogNKZpzLwIxURHqxaxqf65S8
	 4iP8wAkx6uNy3U//0AR09fVEyKKK11++9Owv4L6JYjHHSif4XK62pCEb+TfT8RFVHT
	 Dp0pgdlOradvQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id CF2D4E21ED3;
	Fri, 19 May 2023 12:40:19 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next] net: arc: Make arc_emac_remove() return void
From: patchwork-bot+netdevbpf@kernel.org
Message-Id:  <168450001983.31347.7784908819627881488.git-patchwork-notify@kernel.org>
Date: Fri, 19 May 2023 12:40:19 +0000
References: <20230518203049.275805-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20230518203049.275805-1-u.kleine-koenig@pengutronix.de>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig_=3Cu=2Ekleine-koenig=40pengutronix=2Ede=3E?=@ci.codeaurora.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, heiko@sntech.de, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_054021_886203_EA209763 
X-CRM114-Status: GOOD (  11.59  )
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

SGVsbG86CgpUaGlzIHBhdGNoIHdhcyBhcHBsaWVkIHRvIG5ldGRldi9uZXQtbmV4dC5naXQgKG1h
aW4pCmJ5IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD46CgpPbiBUaHUsIDE4
IE1heSAyMDIzIDIyOjMwOjQ5ICswMjAwIHlvdSB3cm90ZToKPiBUaGUgZnVuY3Rpb24gcmV0dXJu
cyB6ZXJvIHVuY29uZGl0aW9uYWxseS4gQ2hhbmdlIGl0IHRvIHJldHVybiB2b2lkIGluc3RlYWQK
PiB3aGljaCBzaW1wbGlmaWVzIGl0cyBjYWxsZXJzIGFzIGVycm9yIGhhbmRpbmcgYmVjb21lcyB1
bm5lY2Vzc2FyeS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9h
cmMvZW1hYy5oICAgICAgICAgIHwgMiArLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9hcmMvZW1h
Y19hcmMuYyAgICAgIHwgNiArKystLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvYXJjL2VtYWNf
bWFpbi5jICAgICB8IDQgKy0tLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9hcmMvZW1hY19yb2Nr
Y2hpcC5jIHwgNSArKy0tLQo+ICA0IGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTAg
ZGVsZXRpb25zKC0pCj4gCj4gWy4uLl0KCkhlcmUgaXMgdGhlIHN1bW1hcnkgd2l0aCBsaW5rczoK
ICAtIFtuZXQtbmV4dF0gbmV0OiBhcmM6IE1ha2UgYXJjX2VtYWNfcmVtb3ZlKCkgcmV0dXJuIHZv
aWQKICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbmV0ZGV2L25ldC1uZXh0L2MvMjBkNWUwZWYy
NTJhCgpZb3UgYXJlIGF3ZXNvbWUsIHRoYW5rIHlvdSEKLS0gCkRlZXQtZG9vdC1kb3QsIEkgYW0g
YSBib3QuCmh0dHBzOi8va29yZy5kb2NzLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3B3Ym90Lmh0bWwK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
