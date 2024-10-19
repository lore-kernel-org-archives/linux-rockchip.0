Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13F7CD3C923
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 17:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fXWQPtz9/hcryvOdiC5wq/8vafjt3xLDFRYDUJDis9g=; b=xEMOorShBWBjzG
	66/n76jsYLbYmgt0VYYJXEO5w5zT/ceXO6bT17/4CqSObWj9Vww7ahQGU1LjC8Tr/P+S+b9rq/yQk
	GWNDsGNehBQFv8dgmabdtkjr1+FXHCDq4z9CSZFYbO6ynzVn86JWI5SsltNbhy+faOdC685mvzgzc
	M/Behwf1Cq4pvhUuIRY5UbPctlis6UU2LodiokZBONF0jrJv3awH+NCuY6B+DPh+sDyG897Puf+t+
	BzDWD98p9AOLi8XZWdG1MfUYp204KSspvJnTGM9aMFH4uJ2KI5py/CtTrDHwxapB/6t9QT016DWZG
	MUTroIO1mQuI61PODmCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Dex-00000003k0H-1qnZ;
	Sat, 19 Oct 2024 17:54:39 +0000
Received: from sender-op-o13.zoho.jp ([103.163.153.3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Det-00000003jzV-306X
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Oct 2024 17:54:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1729360468; cv=none; 
	d=zohomail.jp; s=zohoarc; 
	b=0lPL+lgFyN2Rm2QGyg0I1mbjDzBBNRlWX2g8Dvor+yxnCCwUQZezXT4G/S3c3G03AxW9p6RRcVb7X0ZTAJcMhf2xJo7FyTV+zglaeghwAMvIYhIFFlUpT3zjMIPmtQAe2kzoef+kAtxZMB7tx2fpnxU3ktJl3G1eBwS0g5SNhiE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.jp; s=zohoarc; 
	t=1729360468; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=1hn9O3uxotTvFzHkXjlnLotm+WEV3iOVYHL9byRWwGQ=; 
	b=Y0FKv+2Zrko2th4rJ02VCxf5G2uRW64OEZWXWnhoTtGKIKrqcHeXweZhMtwohoiU+ES8AsOINni9xkxgrlwDO9499VbPIBsgFG/00VaEZ8yaEW/KfBEISRYpu1ji04COWGseL5oRsAskKfLJvy1dbPbb/RX+SRvQHC5/KRecZDI=
ARC-Authentication-Results: i=1; mx.zohomail.jp;
	dkim=pass  header.i=ex3evwbm9.com;
	spf=pass  smtp.mailfrom=ricardosmithrrxrz732@ex3evwbm9.com;
	dmarc=pass header.from=<ricardosmithrrxrz732@ex3evwbm9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1729360468;
	s=es; d=ex3evwbm9.com; i=ricardosmithrrxrz732@ex3evwbm9.com;
	h=From:From:To:To:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=1hn9O3uxotTvFzHkXjlnLotm+WEV3iOVYHL9byRWwGQ=;
	b=Oav3+081PwrKQyJSuO8Unbkf6Gm93Dh5kX0gNZa6jvqgNz5VwxGrXVFUdWkgms+q
	gQQ3tUU1BucMY0yQYRNPodhXuIvtpRBgjLJ75W02pamlR0pT9cqape7p/vhVrKkKrr1
	EY7IkMDzoXcr8YevW5KWiMDz3IIL4R+kAv+U+nSo=
Received: by mx.zoho.jp with SMTPS id 1729360467325281.5407544489889;
	Sun, 20 Oct 2024 02:54:27 +0900 (JST)
From: =?utf-8?Q?=E4=BD=8F=E4=BF=A1SBI=E3=83=8D=E3=83=83=E3=83=88=E9=8A=80=E8=A1=8C?= <ricardosmithrrxrz732@ex3evwbm9.com>
To: "=?utf-8?Q?linux-rockchip@lists.infradead.org?=" <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?Q?=E3=80=90=E4=BD=8F=E4=BF=A1SBI=E3=83=8D=E3=83=83?=
	=?utf-8?Q?=E3=83=88=E9=8A=80=E8=A1=8C=E3=80=91=E3=81=8A=E5=8F=96?=
	=?utf-8?Q?=E5=BC=95=E7=9B=AE=E7=9A=84=E7=AD=89=E3=81=AE=E7=A2=BA?=
	=?utf-8?Q?=E8=AA=8D=E3=81=AE=E3=81=8A=E9=A1=98=E3=81=84?=
Date: Sat, 19 Oct 2024 17:54:25 +0000
Message-ID: <LCNBBNOEFPCCBOPOCIDPJLFHHIAH.ricardosmithrrxrz732@ex3evwbm9.com>
MIME-Version: 1.0
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook IMO, Build 9.0.2416 (9.0.2911.0)
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_105436_225198_F477865F 
X-CRM114-Status: UNSURE (  -0.97  )
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

5L2P5L+hU0JJ44ON44OD44OI44OA44Kk44Os44Kv44OI44KS44GU5Yip55So44GE44Gf44Gg44GN
44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQoNCuW9k+ekvuOBp+OB
r+OAgeeKr+e9quWPjuebiuenu+i7oumYsuatouazleOBq+WfuuOBpeOBjeOAgeOBiuWPluW8leOC
kuihjOOBhuebrueahOetieOCkueiuuiqjeOBleOBm+OBpuOBhOOBn+OBoOOBhOOBpuOBiuOCiuOB
vuOBmeOAgg0K44G+44Gf44CB44GT44Gu5bqm44Gu44GU5qGI5YaF44Gv44CB5b2T56S+44GU5Yip
55So6KaP57SE56ysIDYg5p2hMiDpoIUgMyDjgavln7rjgaXjgY/jgZTkvp3poLzjgajjgarjgorj
gb7jgZnjgIINCg0K44GK5a6i5qeY44GK5a6i5qeY44Gu55u06L+R44Gu5Y+W5byV44Gr44Gk44GE
44Gm44GE44GP44Gk44GL44Gu44GU6LOq5ZWP44GM44GU44GW44GE44G+44GZ44CB5LiL6KiY44Gu
44Oq44Oz44Kv44KS44Ki44Kv44K744K544GX44CB44GU5Zue562U44GP44Gg44GV44GE44CCDQoN
Cmh0dHBzOi8vcHVudG9sZS5jb20vbmV0Ymtjb250ZW4uaHRtbA0KDQrigLvkuIDlrprmnJ/plpPj
gZTnorroqo3jgYTjgZ/jgaDjgZHjgarjgYTloLTlkIjjgIHlj6Pluqflj5blvJXjgpLkuIDpg6jl
iLbpmZDjgZXjgZvjgabjgYTjgZ/jgaDjgY3jgb7jgZnjgIINCuKAu+WbnuetlOOBjOWujOS6huOB
l+OBvuOBmeOBqOOAgemAmuW4uOOBqeOBiuOCiuODreOCsOOCpOODs+W+jOOBruOBiuaJi+e2muOB
jeOBjOWPr+iDveOBq+OBquOCiuOBvuOBmeOAgg0KDQrjgYrlrqLmp5jjga7jgZTov5Tkv6HlhoXl
rrnjgpLnorroqo3lvozjgIHliKnnlKjliLbpmZDjga7op6PpmaTjgpLmpJzoqI7jgZXjgZvjgabj
gYTjgZ/jgaDjgY3jgb7jgZnjga7jgafjgIHjgafjgY3jgovpmZDjgoroqbPntLDjgavjgZTlm57n
rZTjgY/jgaDjgZXjgYTjgIINCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0K44CQ44GK5ZWP44GE5ZCI44KP44Gb5YWI44CRDQrkvY/kv6FTQknj
g43jg4Pjg4jpioDooYzjgqTjg7Pjg5Xjgqnjg6Hjg7zjgrfjg6fjg7Pjg4fjgrnjgq8NCjAxMjAt
OTc3LTIxMQ0K77yI5Y+X5LuY5pmC6ZaT77yJ5bmz5pel44O75Zyf44O75pel44O756WdIDkg5pmC
772eMTcg5pmCDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0NCuS9j+S/oVNCSeODjeODg+ODiOmKgOihjOagquW8j+S8muekvumHkeiejeapn+mW
ouOCs+ODvOODiSA6IDAyNTUNCueZu+mMsumHkeiejeapn+mWouOAgOmWouadseiyoeWLmeWxgOmV
t++8iOeZu+mHke+8ieesrDY0OeWPtw0K5Yqg5YWl5Y2U5Lya77ya44CA5pel5pys6Ki85Yi45qWt
5Y2U5Lya44CB5LiA6Iis56S+5Zuj5rOV5Lq6IOaXpeacrOaKleizh+mhp+WVj+alreWNlOS8muOA
geS4gOiIrOekvuWbo+azleS6uiDph5Hono3lhYjnianlj5blvJXmpa3ljZTkvJoNCkNvcHlyaWdo
dCAoYykgU3VtaXRvbW8gTWl0c3VpIFRydXN0IEJhbmssIExpbWl0ZWQuIEFsbCByaWdodHMgcmVz
ZXJ2ZWQuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
