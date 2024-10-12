Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A664FCF256B
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 15:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gbZ7wwsjZ2OcNMy1VRHIIiQwcRE6UgccbLepOQIqAtc=; b=FQUHmpQIDo26Xj
	sOA6uNzuNPOsAI3ZvIxQ43M+Be5XmT7Jj9nec8J9weOpAn19NVBR07EtycPwewoQ7uITq2eohetaz
	6AIYKyHArk6gAhPL/CFxDTY44UZlt9YbaVkLu84e2iicg49F9Sb+9OckVQbYie4YltDLX8IP0YTj/
	dTOuqdqBuF+0k4F9KtHCpGkdlNGQ1G5y2IBK2WgUE79g45WzI+EBHJA8M0zd5GMrDJo1w3gJnqbsq
	1l+dDy5PxL2zwY88B7ZwI9pY4qknNIOrHpASyPZ8SvEGcDJR/ECqe40M6rcOHzXV5lzC9kya68/PZ
	Rb7qZrRtt8h3h53Y3a4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szdj8-00000001PSZ-315t;
	Sat, 12 Oct 2024 15:08:18 +0000
Received: from sender-op-o13.zoho.jp ([103.163.153.3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szdj4-00000001PQ2-1GRr
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 15:08:16 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1728744775; cv=none; 
	d=zohomail.jp; s=zohoarc; 
	b=Zzm+URjoGLXBfTovPhH+R5B2Bgr6mmtsARdO0Vg878uGgFUXcYPBfDJWSzaJIKccIM3AjED5NQdAuso3+CQY3ze2TopUeiu2kDKu7UM/+rdfyac2GCUnPDHkc0jGG2IXNlaVeR6fFEP10NK56uQ0lehuMYBnYuzH98hluGSa3nE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.jp; s=zohoarc; 
	t=1728744775; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=V8eyAh2bJ1OkL9xYzoz1XoFmppkwZzpwUdnmXEVIW4M=; 
	b=0X4yrhGlbaFbsP3aanS96IKHBSaqFJuWw7JZW8S/LXdPWvYJ7duKEbULzNeh2sMveq+WJmHnI1dBaZ7aOq+B27vlOWTSBeTHv250g27H46KZJgwraoMa2CBjCXdTS5QnoixR4qhJIzImVIm43Aq+SUvZlX2KsJQkoGKz9DemXYU=
ARC-Authentication-Results: i=1; mx.zohomail.jp;
	dkim=pass  header.i=ej43rmo7c.com;
	spf=pass  smtp.mailfrom=estersdeanexqnw974@ej43rmo7c.com;
	dmarc=pass header.from=<estersdeanexqnw974@ej43rmo7c.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1728744775;
	s=zmail; d=ej43rmo7c.com; i=estersdeanexqnw974@ej43rmo7c.com;
	h=From:From:To:To:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=V8eyAh2bJ1OkL9xYzoz1XoFmppkwZzpwUdnmXEVIW4M=;
	b=fDtTzjUGH9S8n5CUgy45nk5pHbcXm/SOIZux8tqcZX7EsjEXHU+WGlUNzaCRMT0D
	Fg8jBgzqlPmCb/Q55OWuTo5axUQDS1Rjs2/s7EoM+bRQkQ/QOJflC1WyKa0uWwtbnS8
	ZTSXX0wIENSV0Xy5uYuVPxjU4ZatoNsuwZrVkpo4=
Received: by mx.zoho.jp with SMTPS id 1728744772710944.7139810522478;
	Sat, 12 Oct 2024 23:52:52 +0900 (JST)
From: =?utf-8?Q?=E3=82=A2=E3=82=A4=E3=83=95=E3=83=AB=E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE?= <estersdeanexqnw974@ej43rmo7c.com>
To: "=?utf-8?Q?linux-rockchip@lists.infradead.org?=" <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?Q?=E3=80=90=E3=82=A2=E3=82=A4=E3=83=95=E3=83=AB?=
	=?utf-8?Q?=E3=80=91180=E6=97=A5=E9=96=93=E5=88=A9,=E6=81=AF?=
	=?utf-8?Q?=E7=84=A1=E6=96=99=E3=82=B5=E4=B8=80=E3=83=93=E3=82=B9?=
	=?utf-8?Q?=E3=81=AE=E6=9C=89=E5=8A=B9=E5=8C=96=E3=81=AE=E3=81=94?=
	=?utf-8?Q?=E6=A1=88=E5=86=85?=
Date: Sat, 12 Oct 2024 14:52:51 +0000
Message-ID: <MBLBFBLGOFBKMPACKGCAKAOOIEGB.estersdeanexqnw974@ej43rmo7c.com>
MIME-Version: 1.0
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook IMO, Build 9.0.2416 (9.0.2911.0)
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_080814_799883_9F07E04F 
X-CRM114-Status: UNSURE (  -1.41  )
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

5bmz57Sg44KI44KK44Ki44Kk44OV44Or44KS44GU5Yip55So44GE44Gf44Gg44GN44CB6Kqg44Gr
44GC44KK44GM44Go44GG44GU44GV44GE44G+44GZ44CCDQrjgqLjgqTjg5Xjg6vmoKrlvI/kvJrn
pL7jgafjga/jgIHmnJ/plpPpmZDlrprjga7kvJrlk6HnibnlhbjjgajjgZfjgaYxODDml6XplpPl
iKnmga/nhKHmlpnjgrXkuIDjg5PjgrnjgpLjgZTnlKjmhI/jgYTjgZ/jgZfjgb7jgZfjgZ/jgIIN
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQrkvJrlk6Hnibnlhbjjgq3jg6Pjg7Pj
g5rjg7zjg7MNCuOBiuOCgeOBp+OBqOOBhuOBlOOBluOBhOOBvuOBme+8gQ0K44GT44Gu5bqm44CB
44GK5a6i5qij44GvMTgw5pel6ZaT5Yip5oGv54Sh5paZ44K15LiA44OT44K544KS44GU5Yip55So
44GE44Gf44Gg44GR44G+44GZ44CCDQrjgrXkuIDjg5PjgrnjgpLmnInlirnljJbjgZnjgovjgavj
ga/jgIHku6XkuIvjga7jg6rjg7Pjgq/jgYvjgonjg63jgrDjgqTjg7PjgZfjgabjgIHnsKHljZjj
garmiYvntprjgY3jgpLjgYrmuIjjgb7jgZvjgY/jgaDjgZXjgYTjgILjgZzjgbLjgIHjgZPjga7m
qZ/kvJrjgavjgYrlvpfjgarjgrXkuIDjg5PjgrnjgpLjgZPmtLvnlKjjgY/jgaDjgZXjgYTjgIHk
u4rjgZk8MTgw5pel6ZaT5Yip5oGv54Sh5paZ44K15LiA44OT44K544KS5pyJ5Yq55YyW44GZ44KL
44CCDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K44K15LiA44OT44K56Kmz57Sw
OiBodHRwczovL252c21pLmNvbQ0KDQrliKnmga/nhKHmlpnmnJ/llY86MTgw5pel6ZaTDQrpgann
lKjplovlp4vml6U65bu/5LiA44OT44K55pyJ5Yq55YyW5b6M44CB5qyh5Zue44Gu6L+U5riI5pel
44GL44KJ6YGp55So44GV44KM44G+44GZ44CCDQoNCuips+e0sOaDheWgseOBr+OAgeW9k+ekvuOB
ruOCpuOCqOODl+OCteOCpOODiOOBp+OCguOBlOeiuuiqjeOBhOOBn+OBoOOBkeOBvuOBmeOAgg0K
5byV44GN57aa44GN44CB44Ki44Kk44OV44Or44Gu44K15LiA44OT44K544KS44GU5oSb6aGn6LOc
44KK44G+44GZ44KI44GG44GK6aGY44GE55Sz44GX5LiK44GR44G+44GZ44CCDQotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCuOBlOS4jeaYjueCueetieOBjOOBlOOBleOBhOOBvuOB
l+OBn+OCieOAgeS4i+iomOOBruOCteODneS4gOODiOaDoeODreOBvuOBp+OBiuawl+i7veOBq+OB
iuWVj+OBhOWQiOOCj+OBm+OBj+OBoOOBleOBhOOAgg0K44Ki44Kk44OV44Or5qCq5byP5Lya56S+
IOWKm+OCueOCvzzkuIDjgrXjg53kuIDjg4gNCumbt+ipseeVquWPtzowMTIw5LiAMTA55LiANDM3
DQrlj5fku5jmmYLplpM6OTowMH4xODowMCjlubPml6Xjga7jgb8pDQrjgqbjgqjjg5fjgrXjgqTj
g4g644Ki44Kk44OV44Or5qCq5byP5Lya56S+DQpUNjAw5LiAODQyMCDkuqzpg73luILkuIvkuqzl
jLrls7bkuLjpgJrkupTmnaHkuIrjgovpq5jnoILnlLozODHkuIAxDQpAIEFJRlVMIENPUlBPUkFU
SU9OLiBBbGwgUmlnaHRzIFJlc2VydmVkLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
