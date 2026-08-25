Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A76B2C61DBE
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2026 14:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d+ASvc1Sv1AnHNO66KFKkJQe7hXYFL7zuk4k9AzR1kA=; b=wCABPIt7rXofEW
	DYPscIqu1wiy8meUdtuiiaVjNiAtsVIMFAtha9o/366W9NqYmiaptOYlHr0vmkoa9pexVDwlXHvCF
	MD/7DzQmTTGdtdNVYl/q7I+JMXroodpKCwPDZ9jIJjlPaO1tHxjRjMp37azkfmmY4vfCAmqoL/gdo
	Kyq+3OOPO7+hna+34ZXXtCHb2LxO2FWEnvqxAUzIdLJXSC2duJdad//Rayq4VFMKq+8JV9FYBPamh
	NbRY5EIsaNrP6FB6s7KrCRSVCLNsf6MIzjOnCHc66M0IoDdL7y3trfCRwDahYmHW/2T9al1pCEZ8R
	RolRonXd7hM6f/0sG3Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wys0L-00000000wWt-1251;
	Tue, 25 Aug 2026 14:19:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wys0H-00000000wVd-0222;
	Tue, 25 Aug 2026 14:19:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with UTF8SMTP id 27BD06020E;
	Tue, 25 Aug 2026 14:19:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id 49A901F00A3A;
	Tue, 25 Aug 2026 14:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787667591;
	bh=9/ysL39BXCiT+DYriWX3dNK7myzJEyB3iQxRDritJU8=;
	h=From:To:Cc:Subject:Date;
	b=ab0tLKx05tPEH7QKGj5TX/qnI79VQ2pg+Dqk84HLPUwnfI4a+w9tSmt8OUGqaswps
	 U8Kzb0rYCXLSlhNvvVFiCrxlBKT4pmp4fD3JmqoGqU4zXGeAcYq30KTBXN5Em+P5Un
	 cV8P3vLtY8iNPMQpBPlr/F6N7WWLsvTf9qYy4MPI/nefryQTL4UwD1wCzVcNJfY9PQ
	 sn/t+2JAezxw0348wlJ3cUaWvip8amAcx2jOXyNO1TifsbSp8FXePuqIKx26/NiR/V
	 YrMI/bnRbXb/Nt1r1EgaN236mC+2HFbDNF7c5jAYUUTJxwg4XoBHi8tQsWF13zzd7G
	 8CbdM+tcMgChw==
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Jassi Brar <jassisinghbrar@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v1 0/3] mailbox: rockchip: Some cleanups
Date: Tue, 25 Aug 2026 16:19:23 +0200
Message-ID: <cover.1787667315.git.ukleinek@kernel.org>
X-Mailer: git-send-email 2.55.0.11.g153666a7d9bb
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=807; i=ukleinek@kernel.org; h=from:subject:message-id; bh=mHK4g9X5bTqZYLLpsHXgGH8SY1HXHnxduprHV8sh+CU=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBqjaRrSUweSKGFVZomJpbH8b+OEAkJjfJMCHCUu n1DF+MdSRuJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCao2kawAKCRCPgPtYfRL+ ThYaCACC8AqL+2klJufSwVxR4oO0r+gDwp6jTOuGFWWo289JC/8XWrSMMCkDVTl8FwzbjEyWdP+ 1JhCKQ2+1Se5m6wuO6PB3oD4vz852qMg5H4p3Ww5uhmnd/VPKnZNQ5z1qJIfj7JU/acIhSxnkuJ yIj6aIINpCfCkOwICfP7/0heKPG6qja5T8FYPOwSfSrFgxfPqvY8DebTYOb9GGTT/bkM4khNzkN Tvf031UVsqQo/duxZZ7q6DED+/Oo7iKg/SPHlTCUqRRMnFzWdvha1WtbKmmbb6TXLn9HtL8B+Q+ JQWE8pP21Hzu+66DrDG9KEFnWU27vk6jOIXadOC0MePrqMa0
X-Developer-Key: i=ukleinek@kernel.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
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

SGVsbG8sCgp3aGlsZSB0cnlpbmcgdG8gdW5kZXJzdGFuZCBob3cgbWFpbGJveCBkcml2ZXJzIHdv
cmssIEkgdXNlZCB0aGUgcm9ja2NoaXAKZHJpdmVyIGFzIGEgcmVmZXJlbmNlIGZvciBhIHdvcmtp
bmcgZHJpdmVyLiBJIGRpZG4ndCBzdWNjZWVkIHlldCAoc28KaXQncyB1bmNsZWFyIHRvIG1lIGhv
dyB0aGUgLnNlbmRfZGF0YSgpIGNhbGxiYWNrIGNhbiBhc3N1bWUgdGhhdCBkYXRhCnBvaW50cyB0
byBhIHN0cnVjdCByb2NrY2hpcF9tYm94X21zZykuCgpUaGlzIHBhdGNoIHNldCBpcyB0aGUgcmVz
dWx0IG9mIHBpY2tpbmcgdXAgdGhlIHBhdGNoIG9wcG9ydHVuaXRpZXMgSQpub3RpY2VkIHdoaWxl
IGxvb2tpbmcgdGhyb3VnaCB0aGUgZHJpdmVyLgoKQmVzdCByZWdhcmRzClV3ZQoKVXdlIEtsZWlu
ZS1Lw7ZuaWcgKDMpOgogIG1haWxib3g6IHJvY2tjaGlwOiBBZGQgYSBwcmVmaXggZm9yIHJlZ2lz
dGVyIGRlZmluZXMKICBtYWlsYm94OiByb2NrY2hpcDogU2ltcGxpZnkgZGV2aWNlIHZhcmlhbnQg
aGFuZGxpbmcKICBtYWlsYm94OiByb2NrY2hpcDogQ29udmVydCB0byB1c2UgZGV2X2Vycl9wcm9i
ZSgpCgogZHJpdmVycy9tYWlsYm94L3JvY2tjaGlwLW1haWxib3guYyB8IDYwICsrKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDMz
IGRlbGV0aW9ucygtKQoKCmJhc2UtY29tbWl0OiBhODQwNmU2YzBiNzkzY2UwNzg4MDE5NjgzODM3
YzQwODU1YjU1OTk1Ci0tIAoyLjU1LjAuMTEuZzE1MzY2NmE3ZDliYgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
