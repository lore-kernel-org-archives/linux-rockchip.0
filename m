Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52EBCCCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 10:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=B8DdEJrNxtIbP2DdqcwDHo+9wiRyJxQOtxrzFTBdTT4=; b=FjOkMb5DFBo/C1qnwrcr6C2eC6
	W5AlQxbEwWJ/yikQ5NifA78s/M2+eO31ALnaaJju6wfxGL05+h46nCKS6TlC2n0nvqbeFZN0d0GGn
	l/+793618/K1FxOVxGEu+d1EwBwEETZVu1ZXpWgsqhxKT5g2LvV7LHF1A5NCZ0h2uvqEX0VZpDo09
	iN2loVfh/jcD5gAzYXXze5zpg45vNbSt73TJbFW17t0ZiyMYWFoFKh1j7BI5OaACzaSFys/LQNCqq
	XrjqEPMpHx3yhYIJIMn2RJN1UhoIAnYNKP1JvDQ8Fko96h9lgNuuI/ic8Aj4JOhcFRJ2I7hlBg39R
	xY7l7gkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB9MZ-0000000Ga7R-2jn5;
	Tue, 21 Oct 2025 10:13:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB9MX-0000000Ga6s-1kys
	for linux-rockchip@bombadil.infradead.org;
	Tue, 21 Oct 2025 10:13:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=GfpnGAo5QsEjieIvsYJY0ub+masQtUoHIYSZP2L8o+w=; b=YmGPaXq3eGK7JbhDlaGbvuNzbY
	ZlxOsiWVfYU4oyArmtRpZBC8He2S4oDmbceD4KCcGjG3R2tgUcYdwCPxavewJ2Vt1qGhxE3Zz54Vs
	nAXO74qVZcKWlVLtJEYayklpFUl31ikczXjjr/7z4lYXxQTbAXGCd93hwdyjznUd/r8zzAfTZfp4F
	+2oSKgLnNpADapiaJhzkoMy9R4Cj/ySvxljuWhi69MeULp55D539skeaMTwnYWCeeuc6Zi91OFfrI
	6N4QgQgGIupEJhBIUZ6HC+SQsud85c9lR2JWuJArAFD2xQ6BAgms0bMnLU4wptWtmjTvDHSHIRPef
	njPSxTQQ==;
Received: from bg4.exmail.qq.com ([43.154.54.12])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB8US-00000000fD9-0iUH
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 09:17:31 +0000
X-QQ-mid: zesmtpip2t1761041544t6e0ad998
X-QQ-Originating-IP: KZt8UQ/l993XH8HuRDNma5R0zqC8lmd7GcqPAWOGRYA=
Received: from [IPV6:240f:10b:7440:1:fbdd:6094 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 21 Oct 2025 18:12:21 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5943898346792246940
Message-ID: <7755D0222F97F8A4+6c855efa-561f-4fd9-aadd-a4de3d244c7e@radxa.com>
Date: Tue, 21 Oct 2025 19:12:21 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Subject: ROCK 5B/5B+ RTL8852BE probe failure on v6.18-rc
To: linux-rockchip@lists.infradead.org
Cc: linux-pci@vger.kernel.org
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: OOCyznbq6KdUOlhtP0nrbpkbV8twnXANHbpDcjuiTn6Ywx7yypNCAIGM
	mK26/ptNPW5SQSrDNC8WgqZFWvKIurIn+C0DdkmxCgmKegjU3dsy6pjSIFOj9BWUmPbyCl4
	ZU3EVnGnsjEAvT8WP44uZoftepHbrPBzSyC/RR8i1BbdB73NDCLX4WC46tqpVaBFsu0vzxi
	FJDOTBqB+m3avNDJUYUvI8Tv28R2LBFkDcpClfib1ku3qpiQeWy6dH+d0iWts/3IlDMesY+
	lmxH6tkn52bi4vWu1zAWLvaVjGM7J2VpcX+pQjOFsMhe4usdm5NNrkgwHjyOAze6hFI1AuB
	IMqpg1Btyqtw+LUBMIotR/1XcHVQsyOCKOC6VCcWn715Iu4FG0kQ9nc4nIktF9cMOzoae9j
	ff07JHQo6MLV55iXwca9pqu/I7vexMOyaDXcrbEeLc/JB7fbdNX8AmSvWyb1xVUi+TqgzHM
	7rEebrgZ4nmOznDXwT0ckTQ8UuC8KqhBh/VsKqF5gQ5LIas/E5dMWl7CegyJBk+MR+tHDzw
	Ycjb5RLIemtc6DqwZfbzdpqY1kvGZ7nEcELg8Fe/GfxbQaHZwM7AGqbTKTPSelV6EU3KGgs
	250UeqGJd+IxO6IENLz9U8wVAUalAkW04tuinRKEYFFnOtVJLtycxVJMXKeH96U5FE9LHDM
	eOVMAW1WnRkorpy24QCb0F0i3DJtUyLkQLrR1ISBfaFPwpUR2RC8ei+RDOCWVHXJV7QcfGQ
	4Sp5/ou2mAOHeXGGCMjS/I5R7fMViu1MZv3aTBkeJ3Bp2PJOOMfpn3QBx9UwnO0poFuW1Kb
	vxuM2ojLNRJqQcOdh5EHJFHXMOBAZB2CDVPw9I9UpU2N9ApLc1ZlnwJinl0wliV0zYVqJOf
	5/G9pShitdt8yQXllZyW3szLY1MgzeiIA6dqgcKG8Q3+PJOjSzEXUhAdeif8Wu7Nfq1RWlD
	0/6f0ewsmdvubbUpiGg/EDqHKVfVEfvF/2fbwyyWXHfwPFcdVFFHJVxivgIhPqiYTiu9jo/
	uMvT83Eg==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-SPAM: true
X-QQ-RECHKSPAM: 3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_101715_160814_ABDEDB59 
X-CRM114-Status: UNSURE (   6.68  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

I've observed an issue where the RTL8852BE fails to probe on the ROCK 5B 
and ROCK 5B+ using Linux v6.18-rc.

[    7.719288] rtw89_8852be 0002:21:00.0: loaded firmware 
rtw89/rtw8852b_fw-1.bin
[    7.720192] rtw89_8852be 0002:21:00.0: enabling device (0000 -> 0003)
[    7.728596] rtw89_8852be 0002:21:00.0: Firmware version 0.29.29.5 
(da87cccd), cmd version 0, type 5
[    7.729407] rtw89_8852be 0002:21:00.0: Firmware version 0.29.29.5 
(da87cccd), cmd version 0, type 3
[   11.420623] rtw89_8852be 0002:21:00.0: failed to dump efuse physical map
[   11.422859] rtw89_8852be 0002:21:00.0: failed to setup chip information
[   11.425273] rtw89_8852be 0002:21:00.0: probe with driver rtw89_8852be 
failed with error -16

This issue does not reproduce on v6.16. The issue does not reproduce 
with the MT7921E or the AX210. Furthermore, the issue does not reproduce 
on the ROCK 5A or the ROCK 5 ITX+.

The issue appears not to reproduce in or prior to commit 14bed9bc81ba. 
The issue reproduces, albeit with a low incidence rate, after commit 
bf76f23aa1c1. It reproduces, but not 100%, on v6.17, and is likely 100% 
reproducible on v6.18-rc.

The dmesg output and the result of lspci -vv when the issue occurs can 
be found below:
  https://gist.github.com/RadxaNaoki/bf57b6d3d88c1e4310a23247e7bac9de

What should I investigate next?

-- 
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
