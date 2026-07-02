Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB553C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 16:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+e+z2TLE+9pYyAMH34AtR+yKx0UIo92WL0DuyXXRQz4=; b=At3T5Y++XWg12y
	XBOUto4UWCJS37MJuRn36VYE4nBIM4S896klgjQpAuyPJBE+7PUFdqIWy99qWL8BdjbG3ulMjNE/b
	08TAn/r+QbFCbYMAXeIaxUyZZh/+DmUlmC2jYckGpcKrg09DfKx4r3Zs1/+HcvGKg8E3SwcX6cAKi
	tfaTNCDPHyd5I1n+gkJAsINxaqsjENstUMe1FFvPB4m9wIP27t+iMwy/MaQvLNQoj9fs4sQbnThMN
	stwoxSF7Wh87w7RWa+kJqZ9bosVMUYy+6bU8qt7YDGr8sLGNt91usscRZTlF23uWllpSXU6IrQ7uf
	Y8P9FKwm7va/DihNg/yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfKMk-000000051Z5-0BmQ;
	Thu, 02 Jul 2026 16:34:18 +0000
Received: from out162-62-57-49.mail.qq.com ([162.62.57.49])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfKMe-000000051XN-3oWR;
	Thu, 02 Jul 2026 16:34:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783010047; bh=wtyPvfOPlI8lO1gtfdlkwshrP9wEL3DjzSaTi1Z0qJQ=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=g+9stt4pnAHDdShk48bm36MMxwtwtZHvlAwU3dgHxsbu99DTclqOh2GQVSNQrprYL
	 OU5INItRuox5iGeFBypkFu7jK/alEzViEbj8/UfzajmzSzPkQP4qndmVdazqviPaW1
	 OJuhonSS3EGKafHn3aUNCOI1ozWVRtisLWC12/pk=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-XMAILINFO: M3xhvUMF/amdXfLAcLPJYyxU8pfHztMec5KSMY0vwJQUUn1vgibdDU5f/p7kBy
	 osVo1Iz4SatIArLqt4V66CRmQQnG5gDWDRWyZZu/8Xh2ono92AqV+D4UZxraLFo1Y3EkUYjC7oWCf
	 RtY92rmqVasLgX3+2LWdu+59jZdbBi1qBfEe+MnKyncCfCmke9yM238yQJ+Rvfy9OaUZRDR6yEIze
	 eyzQpvxI66bzg3eErwrNs1WdEBrMhmIpskMKLBrLc+scf/sLmh5tjxUCKj6e4578zr6Mzrrlcmeqw
	 X+1YjBb/uvpwdDOL0UxcDGP5t57Us2otG5e/6g063KVnZCjPe77aq+cDL8UEqwZ2+6evoQgzhi22/
	 tS5luHM095Yi32d0tqNsXIU//PhyHDAK0KUJEbELnYTDw+4PtytWoWs5zkx7c02o+sYyHsc9oeWpi
	 VWgATXOCWDJQfDWDBnlREekcSoAg5u2nqAJ+Zs0e4hw1kZLBp5R2Svqe5tKfH4pDYdrqIHfZSuDuS
	 ZmJ58/cP2uCWT5R3phZr81iQ+sxoCvHjqx2m1XZv4KkSl6x5/yTwVT4BsQgCDsVt6MPGuQfRamSBi
	 FKu93BPG3KzSaVmkiesI5LcdjoSy+W5d7s6tisjfLLBObL714jXKEup+4qQlq1O7jeMfOP/TtxGvm
	 S0s+7oIyGkNespBfVx2o3DoOlYZk9ii4WZzgoiAJN7LqJ3A+csHMt+db7q7yRCMarKth9S8IQB8Ud
	 VdZ2emEQ3lWZFrWpP2AGAIFxilVRJ/97h0t7AUhR1qRvPB7jzhrBTAduaCEUMUYZz3s9iTSu8Riho
	 hP4+zJljgq5qA2ETivjUb1RHO1IpcO5lRTacTJm4gruidFmqujhcSPdmQ9Ff1f/S6itu2QpUV27rJ
	 4SwjkOAmx3hjMM3ZQ4ZXq2y7wgzFzW9mVrLTSznOkxR8IU8tHwrkqtxdvceMM+Lx267sKVGsg/b24
	 EJThpatMn2YyXrrhqysIfVG8jSR//llZJmOmlKtWqL0FoTdcdxi0BN1af8HdVHf12BhGAAlCDXTed
	 1H+zkTjspQDY9JLIgW98QNCW8aGdwvPHKFsFBrkstpMUKG7fdMdk2GVbL1eQA6j+Wy218LNsaD7Oq
	 ui8ht9cZHdr902M9qwKJrMphMWl+YFs5QsOTuh+bIhejQUndr6ZpuK72FHTWYFIZMHc=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?SGVpa28gU3TDvGJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>
Cc: "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?RG1pdHJ5IFRvcm9raG92?=" <dmitry.torokhov@gmail.com>, "=?utf-8?B?U2hlbmdqaXUgV2FuZw==?=" <shengjiu.wang@nxp.com>, "=?utf-8?B?UGVuZ3BlbmcgSG91?=" <pengpeng@iscas.ac.cn>, "=?utf-8?B?UnVzc2VsbCBLaW5n?=" <rmk+kernel@armlinux.org.uk>, "=?utf-8?B?RXJpYyBCaWdnZXJz?=" <ebiggers@kernel.org>, "=?utf-8?B?TWFyaW8gTGltb25jaWVsbG8=?=" <mario.limonciello@amd.com>, "=?utf-8?B?S2FybCBNZWhsdHJldHRlcg==?=" <kmehltretter@gmail.com>, "=?utf-8?B?WWl4dW4gTGFu?=" <dlan@kernel.org>, "=?utf-8?B?U3RlcGhlbiBCb3lk?=" <sboyd@kernel.org>, 
	"=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 2/4] can: rockchip: add RK3588 CAN support
Mime-Version: 1.0
Date: Fri, 3 Jul 2026 00:34:04 +0800
X-Priority: 3
Message-ID: <tencent_8BE421601F31C26FB9E99FA6440629016D05@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20260702140654.2961561-1-1579567540@qq.com>
 <tencent_F077D309CDB6CC4802CC086D8009E29BDF06@qq.com>
	<3527453.usfYGdeWWP@diego>
In-Reply-To: <3527453.usfYGdeWWP@diego>
X-QQ-mid: xmsezb41-0t1783010044trbhz8vjr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_093415_392390_31EA118B 
X-CRM114-Status: GOOD (  11.50  )
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

PiBJwqB0aGlua8KgeW91wqBtaWdodMKgd2FudMKgdG/CoGRyb3DCoHRoYXTCoGFib3ZlLsKgSWbC
oGFueXRoaW5nwqBhwqBDby1kZXZlbG9wZWQtYnkKPiB3b3VsZMKgYmXCoGFwcGxpY2FibGUswqBi
dXTCoGZyb23CoHRoZcKgKHNtYWxsKcKgc2l6ZcKgb2bCoHRoZcKgY2hhbmdlLMKgdGhhdMKgYWxz
bwo+IGlzbid0wqByZWFsbHnCoG5lY2Vzc2FyecKgZm9ywqBtZcKgOi0pCj4KPgo+ID7CoFNpZ25l
ZC1vZmYtYnk6wqBDdW5oYW/CoEx1wqA8MTU3OTU2NzU0MEBxcS5jb20+Cj4KPiBUZXN0ZWQtYnk6
wqBIZWlrb8KgU3R1ZWJuZXLCoDxoZWlrb0BzbnRlY2guZGU+Cj4gUmV2aWV3ZWQtYnk6wqBIZWlr
b8KgU3R1ZWJuZXLCoDxoZWlrb0BzbnRlY2guZGU+CgpIaSBIZWlrbywKClNvcnJ5IGFib3V0IHRo
YXQuIFRoaXMgaXMgbXkgZmlyc3QgY29udHJpYnV0aW9uIHRvIHRoZSBMaW51eCBrZXJuZWwsIGFu
ZApJIGhhdmUgbm90IGZ1bGx5IHVuZGVyc3Rvb2QgeWV0IHdoaWNoIHRhZ3MgYXJlIGFwcHJvcHJp
YXRlIGluIHdoaWNoCnNpdHVhdGlvbnMuIFBsZWFzZSBiZWFyIHdpdGggbWUuCgpJIHdpbGwgYWRk
IHlvdXIgQ28tZGV2ZWxvcGVkLWJ5IHRhZyBpbiB2MywgdG9nZXRoZXIgd2l0aCB5b3VyClNpZ25l
ZC1vZmYtYnkgYXMgcmVxdWlyZWQgZm9yIENvLWRldmVsb3BlZC1ieS4KCkJlc3QgcmVnYXJkcywK
Q3VuaGFvCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
