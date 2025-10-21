Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6297ACCD1A5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 11:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKaGN9Uu2hkrrIbzQ1fZPriEwWiJxdZuEh2iONRBZ3Y=; b=dslI/b6UDNRGFF
	6NFY3gRQcl67h4fCM4kaNsUrsCuxja8AqIlsiUEBVdqrUuSU+v3VPs7bqj9dWbnHpdapA7w6GThdX
	FsByCfIjXqRadn2tDJbNTzazoyfsO2NG2WsfJ9r3TBbrWFx55KuJ3oA8tIKJxJqlu6d5uNrA9M2kd
	VyaJAtjLoDISZYuaTpoz3TB8khjhKYzU+rYYUGocLa3NWqGCnZwWrUjfE5XNfYX5dosbjJu1Me+sI
	ixafQn0EbEYwBeElcav7eN9NexBpFm35hdd/gvOSv5ym4fEM/41pIdiUdJB19BpWd/vhbz7voDPzG
	vdhkPNU07XUJa1jQ4lEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBAUH-0000000Gl5o-2B47;
	Tue, 21 Oct 2025 11:25:09 +0000
Received: from bg4.exmail.qq.com ([43.155.67.158])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBAUE-0000000Gl5C-0bPw
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 11:25:07 +0000
X-QQ-mid: zesmtpip2t1761045875tfffd4087
X-QQ-Originating-IP: YCuuq5SdQASn49cjiByvT30NLCgx06xVpIRh9eZM3A8=
Received: from [IPV6:240f:10b:7440:1:fbdd:6094 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 21 Oct 2025 19:24:32 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7541985687921448703
Message-ID: <3BA1DC4878E9DC7E+85e7ef2c-a762-4c12-8955-64212bc192da@radxa.com>
Date: Tue, 21 Oct 2025 20:24:31 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: ROCK 5B/5B+ RTL8852BE probe failure on v6.18-rc
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
References: <7755D0222F97F8A4+6c855efa-561f-4fd9-aadd-a4de3d244c7e@radxa.com>
 <dgn3ekyon6jwfinerxx2ohpvebnxvuvpyqratfc3ciys4l4et7@5un6wskt4xn3>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <dgn3ekyon6jwfinerxx2ohpvebnxvuvpyqratfc3ciys4l4et7@5un6wskt4xn3>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: M5h5sZdLucAq4TyJ4gLxtJaWEb/noEow/YiyZ+tYKRtbuNU9Jkprjf+2
	awufwutNShCjo9zfXNG/up7hDhAzEmup11tx2PVw96rYj3u38MJ12CCTLpZWZPlt6C52hn5
	zA3tnqHQKNrKdOyWrPj+JjzBh8I0TDouBrU7ZSh394K/pSgRqR417BW9d8vXFliMjAkmFSu
	MtrKPAxDYlZSiAenMbxP1pYWVlMHVXoxJmZkBu4O1McVx9cyM8s96vE/1ecPnFUaX+qvwZL
	URENIQYqpOvVtY1buvQiXxbAApsSkN0Bn5FWaWdQipc/A3QxuhwXb+OujVFe6Zm0Evz7eMj
	326RD06OfpjZnbJ7QE++N2zKDPbtAJzS/3SgUgIRBDEfXsoOENZezQAWlNTrKNQoOh9+XhX
	Fl8qW1AZOx5tE/tMptxpa1fVE2ortR9/hUWyXwGs1mKmhemMwhfGEmfEMZZQhH0ay3GuDkp
	LZ6hQqe0KT53WtnlVYuPMuIghqUfOFSUOop/96SS4KgfsUIl4FjYRd2BDg6zYJkG6ZWU/51
	1HJKyEK4AEbHOvsPgMhfon7qqBMITGFfgfgs9x1RD2+K4XBouv7iHL5UEuNVfmguxLyMBJA
	gXkf8nPSn5bXw3lU9GEqjdKTJQdW47C7i6gPH9bXzRU2l/5jlHslsDKKrESryXI5C/eeFHP
	YyqYxYyS+IqksxSNH2zu2y4u8R4FB3iPQXM0ODZfW8IhxgIPeBEuw1qAVjj9ihfzWmPkAsy
	sb9c5DqfskwaBar9xi5HaKAEuJGNDJOh/4+TEfx06ry/799Xo2sFu/yx7TD0UKOqVwiBsxd
	o3w0sfyyXybXUN2g0GnsgloAsWEy+1vGAvszJtIXJgsKDfWHsem1D88jrdJw15z/0Ww6Bvv
	zV8D9sB9yQ8K5t9ohxq6CRAd7idI+7Clsb7vmnK48IXmUSYq8AbFdShSyp+FkJWn4AzGnml
	PSCjXQpx3QWRZAABmB343Mc1QpnMeaGuY+zyxBlAfNcPbvbH9gU+DTCABwpOCq7t2nhPiwz
	2frLi8AGuokwdFigAX
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-SPAM: true
X-QQ-RECHKSPAM: 3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_042506_527111_1DE2B8A8 
X-CRM114-Status: GOOD (  17.21  )
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

Hi Manivannan,

Thank you for your reply.

On 10/21/25 20:02, Manivannan Sadhasivam wrote:
> On Tue, Oct 21, 2025 at 07:12:21PM +0900, FUKAUMI Naoki wrote:
>> Hi,
>>
>> I've observed an issue where the RTL8852BE fails to probe on the ROCK 5B and
>> ROCK 5B+ using Linux v6.18-rc.
>>
>> [    7.719288] rtw89_8852be 0002:21:00.0: loaded firmware
>> rtw89/rtw8852b_fw-1.bin
>> [    7.720192] rtw89_8852be 0002:21:00.0: enabling device (0000 -> 0003)
>> [    7.728596] rtw89_8852be 0002:21:00.0: Firmware version 0.29.29.5
>> (da87cccd), cmd version 0, type 5
>> [    7.729407] rtw89_8852be 0002:21:00.0: Firmware version 0.29.29.5
>> (da87cccd), cmd version 0, type 3
>> [   11.420623] rtw89_8852be 0002:21:00.0: failed to dump efuse physical map
>> [   11.422859] rtw89_8852be 0002:21:00.0: failed to setup chip information
>> [   11.425273] rtw89_8852be 0002:21:00.0: probe with driver rtw89_8852be
>> failed with error -16
>>
>> This issue does not reproduce on v6.16. The issue does not reproduce with
>> the MT7921E or the AX210. Furthermore, the issue does not reproduce on the
>> ROCK 5A or the ROCK 5 ITX+.
>>
>> The issue appears not to reproduce in or prior to commit 14bed9bc81ba. The
>> issue reproduces, albeit with a low incidence rate, after commit
>> bf76f23aa1c1.
> 
> Both of these commits are merge commits and they seem to be not related to PCI
> or WiFi.
> 
>> It reproduces, but not 100%, on v6.17, and is likely 100%
>> reproducible on v6.18-rc.
>>
>> The dmesg output and the result of lspci -vv when the issue occurs can be
>> found below:
>>   https://gist.github.com/RadxaNaoki/bf57b6d3d88c1e4310a23247e7bac9de
>>
>> What should I investigate next?
>>
> 
> So the patch from Niklas [1] didn't solve the issue on these board + WiFi chip
> combo?

Yes, I am reproducing the issue with the patch applied, and it also 
reproduces on v6.17.

The RTL8852BE on the ROCK 5B+ is an onboard component, while the ROCK 5B 
uses an M.2 module; the issue does not appear on the ROCK 5A or ROCK 5 
ITX+ even with the same M.2 module and the same kernel/userland.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> - Mani
> 
> [1] https://lore.kernel.org/linux-pci/20251017163252.598812-2-cassel@kernel.org/
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
