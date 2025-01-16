Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 315FDC02183
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 21:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:To:From:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0yayd+XP7ymN76z08kenjjLbgk9O61MAr/Bnd1ioajg=; b=ohKgj9Tho0vx1P
	V65hY8gM9I8bzaSSaAD9jEQoBCdEtYSisU2mj3cze5SRKtClnmXPckH2P4QFsxOZQZvWEYVWQcA6L
	jaTBBK0MrbueqfQbsowPWi0bkfaBHp5Hx4qwRGofEhsIjuRBe/Qwf45QNq2NQ9LKbNwNPgDuJtDlk
	5hUzWt2QsmfFSS/TT97ubPTyl4xi8w1mE63dFlkL5ak/21trHy553PTmlRy5y3Z36dUF2RNCjKHtG
	+OidquDL/al/gAO0y/i8NeYOdcdZGygF2Fcsnrk4HQyHBLjRWc9U6zS71xowQLsmLxJ6XDMhw5jFD
	HsqFvhnJwZGraa4vEH9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYXDI-0000000G7lX-0twt;
	Thu, 16 Jan 2025 21:15:40 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYXDF-0000000G7k1-273g
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jan 2025 21:15:38 +0000
Received: by mail-qv1-xf43.google.com with SMTP id 6a1803df08f44-6dd15d03eacso14967676d6.0
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jan 2025 13:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrizk.co.uk; s=google; t=1737062136; x=1737666936; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:subject:to:from
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=MMSnhPs6ySn17+v/8hhyoRDhCMmD7QjGhk/nP0YP2Tw=;
        b=SoqBuIfT7l3K3ZLHPVC6rh209UtgALz3I8rT+6S9wkLLYLfIMMK4qL16b84qSPNi9r
         AMdPSEDRqV9FHYep49an1Gy5rIVAQ8Tig39EySMbceQxrxV/pyAa5Rch7+xcPoBLW8mH
         Sy1WvcMkZac2NEgq8gblvqiKHRfiJyBCIK6COrmb3MjPIxC+CM3sU5110vgOFGPtS1NE
         zipgh9ZtNO9bKl+T8wqwdhJgUv1LLWp7T7XWJ/pq5MJK+eD5x/uoPkQVTuxxg+d7X02w
         Ff7tBy7dm1ylgzZMslj1RA6OU65eHZa2BA0xPvtUl2U2hNgIGUeMfNsNeGVtAdsGj98L
         Q/fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737062136; x=1737666936;
        h=content-transfer-encoding:mime-version:date:subject:to:from
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MMSnhPs6ySn17+v/8hhyoRDhCMmD7QjGhk/nP0YP2Tw=;
        b=k1f3CjFNzMznWel2MM25W2AjkMV5FtregV+6SqccjSmZEdFx//RJ32grdLhwp3IZMY
         9oQYRQKpN20vOWxiM/yqGComJDATt/klfEkQAKLXfiBBRkMOUpE8b/KyevTj0spYHoZ3
         Sa5IPom9Rgg4zbWlNrSO2kSVFWZmaPyQT5w3xiXbiXR2wbsTIx7x3vZ+YizNnMluXNz9
         p/0BGBiFY1kv0yLzqAlF2eK8L7NfXYC0OlJP+r/UqC6YqRfLXZCtHvUau3ap574t6437
         fO1UdlaVInAbCiFFMpgEQLwkQNmy8LfiaufIxMRJHz5eoYz+S76dlk4RcwAULs5GbVHE
         okpQ==
X-Gm-Message-State: AOJu0YwTk0Pjz9JSuxW8ptJxTDyv78o0eYdfy6CROHmWt6FH3nHfpFR9
	KLlXQL/PLQSiUFZqDbOG8k1fNtolD4jtpBjbGAWaGUE+5RN+ptNn9PzVemBgmHfl2aGdJI9+YE5
	IDmA=
X-Gm-Gg: ASbGncuhFis0/dKnS2iVTZj5b/HOFxoB5VO5MQTWGPlgMV7eBFeJSWx/b2QXR1aSP4L
	wzCrxe0D9EqA+gKr+cqhMuGGsXn/Fu/A6zqUqJYZ9e44SwLt5l1kWr3unhap0v8Z4WcE+lznFB6
	jt3ElhTmKqLtDfTGND3mFvZPwtfQzOVfVOEIGaAnjf3A37P3UNR2u0Y/ntc5EqytGwi5bFOwHhI
	MylrX6iLA3yI1XzJe3c0Iq81l8kI5doPt6fHbEHlccgUhIpcooTu23IZ88USLDkndnS/7aO63ch
	2Pt7mpUA5ZNddlxMNLLOdQ==
X-Google-Smtp-Source: AGHT+IGEiSrM+RiraN/jgaL/Ra9bU4Jjz+MJPT4IE/suKcML1AewEGtrfOma0eQHJNJMEugVvgzLVA==
X-Received: by 2002:a05:6214:d6f:b0:6e1:a5c2:316e with SMTP id 6a1803df08f44-6e1a5c2339fmr60329986d6.15.1737062135848;
        Thu, 16 Jan 2025 13:15:35 -0800 (PST)
Received: from qeybjdhw.jp (c-73-145-97-84.hsd1.mi.comcast.net. [73.145.97.84])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e1afbf3892sm4117836d6.1.2025.01.16.13.15.35
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2025 13:15:35 -0800 (PST)
Message-ID: <7604d011df2800967e8e2c073a4d41b5@patrizk.co.uk>
From: =?utf-8?Q?JA=E3=83=8D=E3=83=83=E3=83=88=E3=83=90=E3=83=B3=E3=82=AF?= <sendonly180@patrizk.co.uk>
To: "=?utf-8?Q?linux-rockchip@lists.infradead.org?=" <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?Q?=E3=80=90=E9=87=8D=E8=A6=81=E3=80=91=E3=81=8A?=
	=?utf-8?Q?=E5=8F=96=E5=BC=95=E7=9B=AE=E7=9A=84=E7=AD=89=E3=81=AE?=
	=?utf-8?Q?=E7=A2=BA=E8=AA=8D=E3=81=AB=E9=96=A2=E3=81=99=E3=82=8B?=
	=?utf-8?Q?=E3=81=94=E5=8D=94=E5=8A=9B=E3=81=AE=E3=81=8A=E9=A1=98?=
	=?utf-8?Q?=E3=81=84?=
Date: Thu, 16 Jan 2025 21:15:33 +0000
X-Priority: 3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_131537_546735_A7C4E0FD 
X-CRM114-Status: UNSURE (   1.49  )
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

5bmz57Sg44KI44KK77yq77yh44ON44OD44OI44OQ44Oz44Kv44KS44GU5oSb6aGn44GE44Gf44Gg
44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQoNCu+8qu+8oeOD
jeODg+ODiOODkOODs+OCr+OBp+OBr+OAgemWouS/guecgeW6geOBqOmAo+aQuuOBl+OAgemgkOmH
keWPo+W6p+OCkuaCqueUqOOBl+OBn+eJueauiuipkOasuuiiq+Wus+etieOBrumYsuatouOAgeOD
nuODjeODvOODu+ODreODvOODs+ODgOODquODs+OCsOWPiuOBs+ODhuODreizh+mHkeS+m+S4juOD
u+aLoeaVo+mHkeiejeWvvuetlu+8iOKAu++8ieOBruW8t+WMluOCkumAmuOBmOOAgeOBiuWuouOB
leOBvuOBjOWuieW/g+ODu+WuieWFqOOBq+OBiuWPluW8leOBhOOBn+OBoOOBkeOCi+OCiOOBhueS
sOWig+aVtOWCmeOBq+WPluOCiue1hOOCk+OBp+OBiuOCiuOBvuOBmeOAgg0KDQrjgZPjga7lj5bj
gorntYTjgb/jga7kuIDnkrDjgajjgZfjgabjgIHniq/nvarlj47nm4rnp7vou6LpmLLmraLms5Xj
gYrjgojjgbPph5Hono3luoHjga7jg57jg43jg7zjg63jg7Pjg4Djg6rjg7PjgrDjg7vjg4bjg63o
s4fph5HkvpvkuI7lr77nrZbjgqzjgqTjg4njg6njgqTjg7Pjgavln7rjgaXjgY3jgIHml6Ljgavl
vZPnpL7jgajlj5blvJXjga7jgYLjgovjgYrlrqLjgZXjgb7jgavlr77jgZfjgabjgIHku6XkuIvj
ga7jgrXjg7zjg5PjgrnjgpLlrp/mlr3jgYTjgZ/jgZfjgb7jgZnjgIIx5pyI44KI44KKMjAyNeW5
tO+8muW9k+ekvuOBr+OAgeWPluW8leebrueahOetieOBrueiuuiqjeOBuOOBruOBlOWNlOWKm+OC
kuOBiumhmOOBhOOBmeOCi+ODoeODvOODq+OCkuWumuacn+eahOOBq+mAgeS/oeOBl+OAgeOBiuWu
ouanmOOBruePvuWcqOOBruaDheWgse+8iOS9j+aJgOOAgeiBt+alreOAgeWPluW8leebrueahOet
ie+8ieOCkueiuuiqjeOBleOBm+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOAgg0KDQrjgIDjgaTjgY3j
gb7jgZfjgabjga/jgIHvvKrvvKHjg43jg4Pjg4jjg5Djg7Pjgq/jgYvjgonjgIzjgYrlj5blvJXn
m67nmoTnrYnjga7norroqo3jgavplqLjgZnjgovjgZTljZTlipvjga7jgYrpoZjjgYTjgI3jgpLl
j5fpoJjjgZXjgozjgZ/jgYrlrqLjgZXjgb7jgavjga/jgIHmnKzlj5bjgorntYTjgb/jgbjjgZTn
kIbop6PjgpLos5zjgorjgIHjgZTljZTlipvjgYTjgZ/jgaDjgY3jgb7jgZnjgojjgYbjgYrpoZjj
gYTnlLPjgZfkuIrjgZLjgb7jgZnjgIINCg0KDQrigLvjgarjgYrjgIHnorroqo3jgZXjgZvjgabj
gYTjgZ/jgaDjgY/mmYLmnJ/jga/jgYrlrqLjgZXjgb7jgZTjgajjgavnlbDjgarjgorjgb7jgZnj
gIINCuKAuzIwMjXlubQx5pyIMTjml6Xjgb7jgafjgasg44CMIOOBiuWPluW8leebrueahOetieOB
rueiuuiqjSDjgI0g44KI44KK44CB44GK5Y+W5byV44Gu55uu55qE562J44Gu44GU56K66KqN44KS
44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCDQoNCg0KIOKWvOOBiuWPluW8leebrueahOetieOB
rueiuuiqjQ0KaHR0cHM6Ly9rdXJpb3NpdGUuY29tL2phYmFuaw0KDQoNCuKAu+eiuuiqjeOBjOWu
jOS6huOBl+OBvuOBmeOBqOOAgemAmuW4uOOBqeOBiuOCiuODreOCsOOCpOODs+W+jOOBruOBiuaJ
i+e2muOBjeOBjOWPr+iDveOBq+OBquOCiuOBvuOBmeOAgg0K4oC75oyH5a6a5pmC6ZaT5YaF44Gr
56K66KqN44GM5Y+W44KM44Gq44GE5aC05ZCI44Gv44CB44Ki44Kr44Km44Oz44OI44Gu5Y+W5byV
44KS5Yi26ZmQ44GV44Gb44Gm44GE44Gf44Gg44GN44G+44GZ44CCDQoNCuOBiuWuouOBleOBvuOB
q+OBr+OBiuaJi+aVsOOCkuOBiuOBi+OBkeOBl+OBvuOBmeOBjOOAgeS9leWNkuOBlOeQhuino+OD
u+OBlOWNlOWKm+OBruOBu+OBqeOCiOOCjeOBl+OBj+OBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOA
gg0K77yN77yN77yN77yN77yN77yN77yN77yN77yN77yN77yN77yN77yN77yN77yN77yN77yN77yN
77yN77yN77yN77yN77yN77yN77yN77yN77yN77yNDQrjgZTkuI3mmI7jgarngrnjgYzjgZTjgZbj
gYTjgb7jgZfjgZ/jgonjgIHkuIvoqJjjgb7jgafjgZTpgKPntaHjgY/jgaDjgZXjgYTjgIINCumA
o+e1oeWFiCAwMTIwLTA1OC0wOTgNCuOBk+OCjOOBi+OCieOCgu+8qu+8oeODkOODs+OCr+OCkuOC
iOOCjeOBl+OBj+OBiumhmOOBhOOBl+OBvuOBmeOAggoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
